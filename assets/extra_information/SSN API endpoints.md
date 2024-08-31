# **All API endpoints**

# Reseller and Admin API endpoints

>**Add a new user to the database**
URL: http://localhost/admin/add_user?username=&key=&username_to_add=&password_to_add=&preset_to_use=
**preset_to_use options**:
`String`: All presets in the assets/config.json "plan_presets" section.

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**Edit a user in the database**
URL: http://localhost/admin/edit_user?username=&key=&user_to_edit=&field_to_edit=&new_value=
**user_to_edit options**:
`String`: All users that exist in the database.
**field_to_edit options**: 
`String`: username, password, theme
`Integer`: cooldown, max_time, concurrents, max_daily_attacks, set_days, add_days
`Bool`: vip, reseller, mod, admin, mfa, api, bypass_power_saving, bypass_spam_protection, bypass_blacklist, bypass_soft_max_time, banned

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**Remove a user from the database**
URL: http://localhost/admin/remove_user?username=&key=&user_to_remove=
**user_to_remove options**:
`String`: All users that exist in the database.

    Response:
        {
            "error": false/true,
            "message": "API response will be here."
        }

>**View a specific user's attack logs in the database**
URL: http://localhost/admin/view_user_logs?username=&key=&user_to_view=
**user_to_view options**:
`String`: All users that exist in the database.

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
	    	"error":     false,
	    	"user_logs": [{},{},{}]
	    }

>**View a specific user's plan information**
URL: http://localhost/admin/view_user_plan?username=&key=&user_to_view=
**user_to_view options**:
`String`: All users that exist in the database.

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "username": "",
            "password": "",
            "vip": 0,
            "reseller": 0,
            "mod": 0,
            "admin": 0,
            "api_access": 0,
            "bypass_power_saving": 0,
            "bypass_spam_protection": 0,
            "bypass_blacklist": 0,
            "bypass_soft_max_time": 0,
            "telegram_id": 0,
            "theme": "",
            "max_daily_attacks": 0,
            "cooldown": 0,
            "max_time": 0,
            "concurrents": 0,
            "banned": "",
            "locked": 0,
            "time_redeemed": 0,
            "formatted_time_redeemed":
            "created_by": "",
            "time_created": 0,
            "formatted_time_created": "",
            "plan_length": 0,
            "unix_expiry": 0,
            "formatted_expiry": ""
        }

# Admin API endpoints

>**View all attack logs that are stored in the database**
URL: http://localhost/admin/view_all_logs?username=&key=

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "logs": [{},{},{}]
        }

>**View all users in the database and their plan information**
URL: http://localhost/admin/view_all_users?username=&key=

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "users": [{},{},{}]
        }

# Super User API endpoints

>**View build and license key information**
URL: http://localhost/admin/key_info?username=&key=

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "screen_port": 12345,
            "license_key": "",
            "key_expiry": "",
            "build_version": "",
            "dlc_status": false/true,
            "developer_contact_information": ""
        }

# All users API endpoints

>**View your running attacks (Admins and Mods see all running attacks)**
URL: http://localhost/api/view_ongoing?username=&key=

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        Admin/Mod:
		{
			"error":     false,
			"user_only": false,
			"ongoing":   [{},{},{}]
		}
        Non-Admin/Mod:
		{
			"error":     false,
			"user_only": true,
			"ongoing":   [{},{},{}]
		}


>**View your plan information**
URL: http://localhost/api/view_plan?username=&key=

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        {
            "error": false,
            "username": "",
            "password": "",
            "vip": 0,
            "reseller": 0,
            "mod": 0,
            "admin": 0,
            "api_access": 0,
            "bypass_power_saving": 0,
            "bypass_spam_protection": 0,
            "bypass_blacklist": 0,
            "bypass_soft_max_time": 0,
            "telegram_id": 0,
            "theme": "",
            "max_daily_attacks": 0,
            "cooldown": 0,
            "max_time": 0,
            "concurrents": 0,
            "banned": "",
            "locked": 0,
            "time_redeemed": 0,
            "formatted_time_redeemed":
            "created_by": "",
            "time_created": 0,
            "formatted_time_created": "",
            "plan_length": 0,
            "unix_expiry": 0,
            "formatted_expiry": ""
        }

>**Send API attack using assets/funnel.json (assets/dlc/funnel.json if you have SSN AIO)**
URL: http://localhost/api/attack?username=&key=&host={HOST}&port={PORT}&time={TIME}&method={METHOD}
Optional API params: &concurrents=1&rps=64&threads=10&geo=CN

    Response:
        {
            "error": true,
            "message": "API response will be here."
        }
        OR
        If show_host_information_in_api_response is ENABLED (in assets/config.json) and target is a URL:
        {
            "error": false,              
            "attack_id": 0,
            "target": "",
            "port": 0,
            "duration": 0,
            "method_used": "",
            "concurrents_used": 0,
            "your_running_attacks" "0/0",
            "time_to_send": "0.001ms",
            "geolocation": "",
            "requests_per_second": 0,
            "threads": 0,
            "target_asn": "",
            "target_region": "",
            "target_country": "",
            "target_country_code": "",
            "target_city": "",
            "target_zip": "",
            "target_isp": "",
            "target_org": "",
            "target_timezone": ""
        }
        If show_host_information_in_api_response is ENABLED (in assets/config.json) and target is NOT a URL:
        {
            "error": false,              
            "attack_id": 0,
            "target": "",
            "port": 0,
            "duration": 0,
            "method_used": "",
            "concurrents_used": 0,
            "your_running_attacks" "0/0",
            "time_to_send": "0.001ms",
            "len": 0,
            "threads": 0,
            "target_asn": "",
            "target_region": "",
            "target_country": "",
            "target_country_code": "",
            "target_city": "",
            "target_zip": "",
            "target_isp": "",
            "target_org": "",
            "target_timezone": ""
        }
        If show_host_information_in_api_response is DISABLED (in assets/config.json) and target is a URL:
        {
            "error": false,              
            "attack_id": 0,
            "target": "",
            "port": 0,
            "duration": 0,
            "method_used": "",
            "concurrents_used": 0,
            "your_running_attacks" "0/0",
            "time_to_send": "0.001ms",
            "geolocation": "",
            "requests_per_second": 0,
            "threads": 0
        }
        If show_host_information_in_api_response is DISABLED (in assets/config.json) and target is NOT a URL:
        {
            "error": false,              
            "attack_id": 0,
            "target": "",
            "port": 0,
            "duration": 0,
            "method_used": "",
            "concurrents_used": 0,
            "your_running_attacks" "0/0",
            "time_to_send": "0.001ms",
            "len": 0,
            "threads": 0
        }