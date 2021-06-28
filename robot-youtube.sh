#!/usr/bin/env bash

# author: Roberto Rosa da Silva <https://github.com/RobertoRosa7>
# describe: Get Some data from youtube and channel details
# version: 0.1
# license: MIT License

# title: grep '<title>' nome.html | sed 's/<[^>]*>//g' | sed 's/ - You.*//g' | cut -d ';' -f3
# views: grep 'watch-view-count' nome.html | sed 's/<[^>]*>//g'
# like: grep 'like-button-renderer-like-button' nome.html | sed -n 1p | sed 's/<[^>]*>//g;s/ //g'
# unlike:  grep 'like-button-renderer-dislike-button' nome.html | sed -n 1p | sed 's/<[^>]*>//g;s/ //g'
# id_channel: 
  # sed 's/channel/\n&/g' nome.html |
  # grep '^channel' | sed -n 1p | sed 's/isCrawlable.*//g;s/..,.*//g;s/.*"//g'

# UserAgent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.65 Safari/537.36'
# wget --limit-rate=200k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla $1
# curl -v \
#    -H 'Connection: keep-alive' \
#    -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' \
#    -H 'Accept-Language: en-GB,en-US;q=0.8,en;q=0.6' \
#    -A  \
#    $1
#    -o nome.html
# echo "Testing $1"
# timeout -s TERM 45 bash -c while [[ "$(curl -s -o /dev/null -L -w ''%{http_code}'' ${0})" != "200"]] do 
# echo "Waiting for ${1}" && sleep 2 done ${1}
# echo "ok!"
# # curl -I $1 -o nome.html
# curl $1 -o nome.html


function wait_for_url() {}
wait_for_url "$1"