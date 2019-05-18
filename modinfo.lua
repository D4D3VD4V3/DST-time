name = "Show Time"
description = "Show current time in an overlay."
forumthread = ""
author = "D4D3VD4V3"

version =            "1.01"
version_compatible = "1.00"

api_version = 10
dont_starve_compatible = false
reign_of_giants_compatible = false
dst_compatible = true
all_clients_require_mod = false
client_only_mod = true
server_filter_tags = {}

priority = 0.314


configuration_options =
{
    {
        name = "show_time",
        label = "Show Time",
		hover = "Show current time in an overlay.",
        options = 
        {
            {description = "Yes", data = true},
            {description = "No", data = false},
        }, 
        default = true,
    },
}
