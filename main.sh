#!/bin/bash
# Main script
# Here we will simply perform a ntfy hit to a nfty server

Priority=${PLUGIN_PRIORITY:-}
Title=${PLUGIN_TITLE:-}
Tags=${PLUGIN_TAGS:-}
Click=${PLUGIN_CLICK:-}
Attach=${PLUGIN_ATTACH:-}
Icon=${PLUGIN_ICON:-}

URL=${PLUGIN_URL:-ntfy.sh}
Topic=${PLUGIN_TOPIC:-drone-notifications}
Message=${PLUGIN_MESSAGE:-Pipeline finished!}

Username=${PLUGIN_USERNAME:-}
Password=${PLUGIN_PASSWORD:-}

if [[ ! -z $Username ]] || [[ ! -z $Password ]]; then
    UParam="-u $Username:$Password"
fi

if [[ ! -z $Priority ]]; then
    Priority="-H Priority:$Priority"
fi

if [[ ! -z $Title ]]; then
    Title="-H Title:$Title"
fi

if [[ ! -z $Tags ]]; then
    Tags="-H Tags:$Tags"
fi

if [[ ! -z $Click ]]; then
    Click="-H Click:$Click"
fi

if [[ ! -z $Attach ]]; then
    Attach="-H Attach:$Attach"
fi

if [[ ! -z $Icon ]]; then
    Icon="-H Icon:$Icon"
fi

curl $Priority $Title $Tags $Click $Attach $Icon $UParam -d "$Message" $URL/$Topic
#curl $Priority $Title $Tags $Click $Attach $Icon $UParam -d "$Message" $URL/$Topic
