>>> SSN CNC TermFX <<<

Created by https://t.me/tcpsyn

Make sure to read to the bottom for designing tools and colors!

##### assets/funnel.json & assets/dlc/funnel.json #####

{HOST}                              `Description` The targeted host (Example: 70.70.70.7)
{PORT}                              `Description` The targeted port (Example: 80)
{TIME}                              `Description` The attack duration (Example: 300)
{METHOD}                            `Description` The method that was used (Example: OVH-TCP)
{THREADS}                           `Description` The threads/default threads will go here (Example: 10)
{LEN}                               `Description` The len number that was used (Example: 1024)
{GEO}                               `Description` The geolocation/default geolocation will go here (Example: CN)
{RPS}                               `Description` The requests per second/default requests per second will go here (Example: 64)

##### branding/telegram_bot_dlc/start.tfx #####

`Response Type: none`
<<$skipline>>                       `Description` Skip down one line

##### branding/title.tfx #####

`Response Type: string`
<<$spinner>>                        `Description` Current spinner position (Example: \ and /)
<<$user.username>>                  `Description` User username (Example: root)
<<$user.time_until.expiry>>         `Description` Days until user expiry (Example: 65.31)
<<$user.time_until.expiry.fmt>>     `Description` Days until user expiry (Example: 97 days)
<<$user.uptime>>                    `Description` Duration the user has been logged in (Example: 1m25.3837491s)
<<$user.attacks.latest>>            `Description` COMING SOON
<<$total.attacks.latest>>           `Description` Latest attack log in the database (Example: https://ipchicken.com)
<<$cnc.uptime>>                     `Description` How long the CNC has been online for (Example: 21 days)
<<$cnc.uptime.fmt>>                 `Description` How long the CNC has been online for (Example: 7m45.3837491s)
<<$cnc.name>>                       `Description` CNC name set in the Settings > General > Name section of config.json
`Response Type: int`
<<$total.online>>                   `Description` Total number of users who are currently logged in (Example: 3)
<<$total.ongoing>>                  `Description` Total number of ongoing attacks (Example: 6)
<<$total.attacks.count>>            `Description` Total number of attacks stored in the database (Example: 1610)
<<$user.ongoing>>                   `Description` Number of user ongoing attacks (Example: 1)
<<$user.concurrents>>               `Description` Number of user max concurrents (Example: 2)
<<$user.cooldown>>                  `Description` User cooldown time in seconds (Example: 10)
<<$user.attacks.count>>             `Description` Number of user attacks stored in the database (Example: 534)
<<$user.max_daily_attacks>>         `Description` Max number of attacks user can send per day (Example: 100)
<<$user.max_daily_attacks.left>>    `Description` Number of attacks left that the user can send today (Example: 75)
<<$max.slots>>                      `Description` Maximum number of total ongoing attacks (Example: 50)
<<$fake.bots>>                      `Description` Fake bot count (Example: 24526)
<<$fake.online_users>>              `Description` Fake online user count (Example: 23)
<<$fake.ongoing>>                   `Description` Fake ongoing attack count (Example: 11)
`Response Type: bool`
<<$user.vip>>                       `Description` User VIP status (true/false)

##### branding/attacks/mandatory_cooldown.tfx #####

`Response Type: int`
<<$seconds>>                        `Description` Number of seconds remaining in mandatory cooldown (Example: 3)
<<$total.ongoing>>                  `Description` Total number of ongoing attacks (Example: 6)
<<$user.ongoing>>                   `Description` Number of user ongoing attacks (Example: 1)
<<$total.attacks.count>>            `Description` Total number of attacks stored in the database (Example: 1610)
<<$user.attacks.count>>             `Description` Number of user attacks stored in the database (Example: 534)

##### branding/attacks/attack_sent.tfx #####

`Response Type: none`
<<10>>                              `Description` Sleep for 10 milliseconds
<<20>>                              `Description` Sleep for 20 milliseconds
<<100>>                             `Description` Sleep for 100 milliseconds
<<200>>                             `Description` Sleep for 200 milliseconds
<<300>>                             `Description` Sleep for 300 milliseconds
<<400>>                             `Description` Sleep for 400 milliseconds
<<500>>                             `Description` Sleep for 500 milliseconds
<<600>>                             `Description` Sleep for 600 milliseconds
<<700>>                             `Description` Sleep for 700 milliseconds
<<800>>                             `Description` Sleep for 800 milliseconds
<<900>>                             `Description` Sleep for 900 milliseconds
<<1000>>                            `Description` Sleep for 1000 milliseconds (1 second)
`Response Type: string`
<<$clear>>                          `Description` Clear the terminal screen
<<$total.attacks.latest>>           `Description` Latest attack log in the database (Example: https://ipchicken.com)
<<$user.username>>                  `Description` User username (Example: root)
<<$user.attacks.latest>>            `Description` Most recent target that user attacked (Example: 74.74.74.74)
<<$user.vip.expiry>>                `Description` User VIP role expiry (Example: Jan 02 2006 and Not Active)
<<$user.time_until.expiry>>         `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$user.time_until.expiry.fmt.1>>   `Description` User expiry date (Example: Feb 15 2025)
<<$user.time_until.expiry.fmt.2>>   `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_until.expiry.fmt.3>>   `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation>>       `Description` Days since user creation (Example: "42.69" if created 42.69 days ago)
<<$user.time_since.creation.fmt.1>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation.fmt.2>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation.fmt.3>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.created_by>>                `Description` Username of admin or reseller who created user (Example: root)
<<$target.host>>                    `Description` The targeted host (Example: 70.70.70.7)
<<$target.method>>                  `Description` The method that was used (Example: OVH-TCP)
<<$target.time_sent>>               `Description` The unix time when the attack was sent (Example: 1703566826)
<<$target.region>>                  `Description` Region of target (Example: ON)
<<$target.country>>                 `Description` Country of target (Example: Canada)
<<$target.country_code>>            `Description` Country code of target (Example: CA)
<<$target.city>>                    `Description` Country of target (Example: Toronto)
<<$target.zip>>                     `Description` Organization of target (Example: M5A)
<<$target.isp>>                     `Description` ISP of target (Example: Cloudflare, Inc.)
<<$target.org>>                     `Description` Organization of target (Example: Cloudflare, Inc.)
<<$target.timezone>>                `Description` Time zone of target (Example: America/Toronto)
<<$attack.id>>                      `Description` Attack ID (Example: 1097)
<<$cnc.uptime>>                     `Description` How long the CNC has been online for (Example: 21 days)
<<$cnc.uptime.fmt>>                 `Description` How long the CNC has been online for (Example: 7m45.3837491s)
<<$cnc.name>>                       `Description` CNC name set in the Settings > General > Name section of config.json
`Response Type: int`
<<$total.online>>                   `Description` Total number of users who are currently logged in (Example: 3)
<<$total.ongoing>>                  `Description` Total number of ongoing attacks (Example: 6)
<<$total.attacks.count>>            `Description` Total number of attacks stored in the database (Example: 1610)
<<$user.ongoing>>                   `Description` Number of user ongoing attacks (Example: 1)
<<$user.concurrents>>               `Description` Number of user max concurrents (Example: 2)
<<$user.cooldown>>                  `Description` User cooldown time in seconds (Example: 10)
<<$user.max_time>>                  `Description` Max user attack time in seconds (Example: 1200)
<<$user.attacks.count>>             `Description` Number of user attacks stored in the database (Example: 534)
<<$user.max_daily_attacks>>         `Description` Max number of attacks user can send per day (Example: 100)
<<$user.max_daily_attacks.left>>    `Description` Number of attacks left that the user can send today (Example: 75)
<<$target.port>>                    `Description` The targeted port (Example: 80)
<<$target.duration>>                `Description` The attack duration (Example: 300)
<<$target.threads>>                 `Description` The threads used (Example: 5)
<<$target.len>>                     `Description` The len number used (Example: 1024)
<<$target.asn>>                     `Description` AS number of target (Example: 13335)
<<$max.slots>>                      `Description` Maximum number of total ongoing attacks (Example: 8)
<<$fake.bots>>                      `Description` Fake bot count (Example: 24526)
<<$fake.online_users>>              `Description` Fake online user count (Example: 23)
<<$fake.ongoing>>                   `Description` Fake ongoing attack count (Example: 11)
`Response Type: bool`
<<$user.vip>>                       `Description` User VIP status (true/false)
<<$user.reseller>>                  `Description` User Reseller status (true/false)
<<$user.mod>>                       `Description` User Moderator status (true/false)
<<$user.admin>>                     `Description` User Administrator status (true/false)
<<$user.api_access>>                `Description` User API Access status (true/false)
<<$user.bypass_power_saving>>       `Description` User Bypass Power Saving status (true/false)
<<$user.bypass_spam_protection>>    `Description` User Bypass Spam Protection status (true/false)
<<$user.bypass_blacklist>>          `Description` User Bypass Blacklist status (true/false)
<<$user.bypass_soft_max_time>>      `Description` User Bypass Soft MaxTime status (true/false)

##### branding/lookup_cfx.tfx #####

`Response Type: string`
<<$clear>>                          `Description` Clear the terminal screen
<<$cfx.ip>>                         `Description` Self explanatory
<<$cfx.code>>                       `Description` Self explanatory
<<$cfx.country>>                    `Description` Self explanatory
<<$cfx.hosting>>                    `Description` Self explanatory
<<$cfx.org>>                        `Description` Self explanatory
`Response Type: int`
<<$cfx.port>>                       `Description` Self explanatory
<<$cfx.players.current>>            `Description` Self explanatory
<<$cfx.players.max>>                `Description` Self explanatory

##### branding/lookup_host.tfx #####

`Response Type: string`
<<$clear>>                          `Description` Clear the terminal screen
<<$host.ip>>                        `Description` Self explanatory
<<$host.region>>                    `Description` Self explanatory
<<$host.country>>                   `Description` Self explanatory
<<$host.continent>>                 `Description` Self explanatory
<<$host.city>>                      `Description` Self explanatory
<<$host.zip>>                       `Description` Self explanatory
<<$host.isp>>                       `Description` Self explanatory
<<$host.org>>                       `Description` Self explanatory
<<$host.timezone>>                  `Description` Self explanatory
`Response Type: int`
<<$host.asn>>                       `Description` Self explanatory

##### branding/lookup_number.tfx #####

`Response Type: string`
<<$clear>>                          `Description` Clear the terminal screen
<<$number.number>>                  `Description` Self explanatory
<<$number.local_format>>            `Description` Self explanatory
<<$number.international_format>>    `Description` Self explanatory
<<$number.country_prefix>>          `Description` Self explanatory
<<$number.country_code>>            `Description` Self explanatory
<<$number.country_name>>            `Description` Self explanatory
<<$number.location>>                `Description` Self explanatory
<<$number.carrier>>                 `Description` Self explanatory
<<$number.line_type>>               `Description` Self explanatory

##### branding/broadcast.tfx #####

`Response Type: none`
<<$skipline>>                       `Description` Skip down one line
`Response Type: string`
<<$broadcast.sender>>               `Description` Username of whoever sent the broadcast (Example: root)
<<$broadcast.message>>              `Description` Contents of the broadcast message (Example: Enjoy your day everyone!)

##### All Custom Banners + Most Others That Are Not Listed Above #####

`Response Type: none`
<<10>>                              `Description` Sleep for 10 milliseconds
<<20>>                              `Description` Sleep for 20 milliseconds
<<100>>                             `Description` Sleep for 100 milliseconds
<<200>>                             `Description` Sleep for 200 milliseconds
<<300>>                             `Description` Sleep for 300 milliseconds
<<400>>                             `Description` Sleep for 400 milliseconds
<<500>>                             `Description` Sleep for 500 milliseconds
<<600>>                             `Description` Sleep for 600 milliseconds
<<700>>                             `Description` Sleep for 700 milliseconds
<<800>>                             `Description` Sleep for 800 milliseconds
<<900>>                             `Description` Sleep for 900 milliseconds
<<1000>>                            `Description` Sleep for 1000 milliseconds (1 second)
`Response Type: string`
<<$clear>>                          `Description` Clear the terminal screen
<<$total.attacks.latest>>           `Description` Most recent target that has been attacked (Example: 51.51.51.51)
<<$user.username>>                  `Description` User username (Example: root)
<<$user.ssh_client>>                `Description` SSH Client that user connected with (Example: SSH-2.0-PuTTY_KiTTY)
<<$user.connection>>                `Description` IP Address that user connected with (Example: 101.101.101.101)
<<$user.theme>>                     `Description` Theme that user has activated (Example: default)
<<$user.attacks.latest>>            `Description` Most recent target that user attacked (Example: 74.74.74.74)
<<$user.vip.expiry>>                `Description` User VIP role expiry (Example: Jan 02 2006 and Not Active)
<<$user.time_until.expiry>>         `Description` Days until user expiry (Example: "42.69" if expiry is in 42.69 days)
<<$user.time_until.expiry.fmt.1>>   `Description` User expiry date (Example: Feb 15 2025)
<<$user.time_until.expiry.fmt.2>>   `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_until.expiry.fmt.3>>   `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation>>       `Description` Days since user creation (Example: "42.69" if created 42.69 days ago)
<<$user.time_since.creation.fmt.1>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation.fmt.2>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.time_since.creation.fmt.3>> `Description` --- I WILL ADD THIS DESCRIPTION SOON ---
<<$user.created_by>>                `Description` Username of admin or reseller who created user (Example: root)
<<$cnc.uptime>>                     `Description` How long the CNC has been online for (Example: 21 days)
<<$cnc.uptime.fmt>>                 `Description` How long the CNC has been online for (Example: 7m45.3837491s)
<<$cnc.name>>                       `Description` CNC name set in the Settings > General > Name section of config.json
`Response Type: int`
<<$total.online>>                   `Description` Total number of users who are currently logged in (Example: 3)
<<$total.ongoing>>                  `Description` Total number of ongoing attacks (Example: 6)
<<$total.attacks.count>>            `Description` Total number of attacks stored in the database (Example: 1610)
<<$user.ongoing>>                   `Description` Number of user ongoing attacks (Example: 1)
<<$user.concurrents>>               `Description` Number of user max concurrents (Example: 2)
<<$user.cooldown>>                  `Description` User cooldown time in seconds (Example: 10)
<<$user.max_time>>                  `Description` Max user attack time in seconds (Example: 120)
<<$user.attacks.count>>             `Description` Number of user attacks stored in the database (Example: 534)
<<$user.max_daily_attacks>>         `Description` Max number of attacks user can send per day (Example: 100)
<<$user.max_daily_attacks.left>>    `Description` Number of attacks left that the user can send today (Example: 75)
<<$max.slots>>                      `Description` Maximum number of total ongoing attacks (Example: 50)
<<$fake.bots>>                      `Description` Fake bot count (Example: 24526)
<<$fake.online_users>>              `Description` Fake online user count (Example: 23)
<<$fake.ongoing>>                   `Description` Fake ongoing attack count (Example: 11)
`Response Type: bool`
<<$user.mfa>>                       `Description` User MFA status (true/false)
<<$user.vip>>                       `Description` User VIP status (true/false)
<<$user.reseller>>                  `Description` User Reseller status (true/false)
<<$user.mod>>                       `Description` User Moderator status (true/false)
<<$user.admin>>                     `Description` User Administrator status (true/false)
<<$user.api_access>>                `Description` User API Access status (true/false)
<<$user.bypass_power_saving>>       `Description` User Bypass Power Saving status (true/false)
<<$user.bypass_spam_protection>>    `Description` User Bypass Spam Protection status (true/false)
<<$user.bypass_blacklist>>          `Description` User Bypass Blacklist status (true/false)
<<$user.bypass_soft_max_time>>      `Description` User Bypass Soft MaxTime status (true/false)

> > > SSN DESIGNING GUIDE (By: Space https://t.me/tcpsyn) < < <

# Resize Terminal:

[8;{HEIGHT};{WIDTH}t

# Custom Colors:

> Visit: https://ibb.co/C2XvW66 <

# For FOREGROUND colours replace "{ID}" below with a Custom Color ID from within the image above.
[38;5;{ID}m

# For BACKGROUND colours replace "{ID}" below with a Custom Color ID from within the image above.
[48;5;{ID}m

# Box drawing characters:

▉▝ ▘▗ ▖▙ ▜ ▛ ▟ ▞ ▚ 
╭╴╶╮╲╵╷
╰╴╶╯╱╳
┌─┬┐  ╔═╦╗  ╓─╥╖  ╒═╤╕
│ ││  ║ ║║  ║ ║║  │ ││
├─┼┤  ╠═╬╣  ╟─╫╢  ╞═╪╡
└─┴┘  ╚═╩╝  ╙─╨╜  ╘═╧╛

# Here is how to make your boxes line up properly (iykyk):

[8;{WIDTH}f║