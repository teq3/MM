#!/bin/sh
if [ ! -f UUID ]; then
  UUID="942b3842-35d9-4885-9ef4-c9585547b317"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

