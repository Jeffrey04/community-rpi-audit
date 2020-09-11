#/usr/bin/env bash

if [ -f .env ]
then
    export $(grep -v '#.*' .env | xargs)
fi

/bin/sleep 30
/usr/bin/curl -v -XPOST -H"Content-type: application/json" -d'{"key": "'${IFTTT_KEY}'", "event": "tg_bot_test"}' http://ifttt.coolsilon.com/phone_home

for url in $(shuf test-list.txt);
do
    ./miniooni -i $url web_connectivity;
done
