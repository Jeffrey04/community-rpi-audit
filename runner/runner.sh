#/usr/bin/env bash

if [ -f .env ]
then
    export $(grep -v '#.*' .env | xargs)
fi

curl -XPOST -H"Content-type: application/json" -d'{"key": "'${IFTTT_KEY}'", "event": "tg_bot_test"}' ifttt.coolsilon.com/phone_home