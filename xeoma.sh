#!/bin/bash

set -e

function ts {
  echo [`date '+%b %d %X'`]
}

#-----------------------------------------------------------------------------------------------------------------------

echo "$(ts) Starting the server in 5 seconds. See the log directory in your config directory for server logs."

if [[ -e /archive-cache/4vagl0js6k ]]
then
    echo "$(ts) Not using archive cache"
    echo "$(ts) options: -core -service -log -startdelay 5 -disableDownloads -noautoupdate"
    /usr/bin/xeoma -core -service -log -startdelay 5 -disableDownloads -noautoupdate
else
    echo "$(ts) Using archive cache"
    echo "$(ts) options: -core -service -log -startdelay 5 -archivecache /archive-cache -disableDownloads -noautoupdate"
    /usr/bin/xeoma -core -service -log -startdelay 5 -archivecache /archive-cache -disableDownloads -noautoupdate
fi
