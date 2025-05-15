#!/bin/bash

server="smtp.yandex.ru"
email="s.malyuck@yandex.ru"
password="$SMTP_PASSWORD"
used_space=$(df --output=pcent / | tail -1 | tr -dc '0-9')

if (( used_space >= 85 )); then
    message="Диск занят на ${used_space}%"

    echo "$message" | msmtp --host="$server" --port=587 --auth=on --from="$email" \
    --user="$email" --tls=on --tls-starttls=on --passwordeval="echo $password" "$email"
fi
