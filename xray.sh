#!/bin/sh
if [ ! -f UUID ]; then
  UUID="83a17277-8adf-49ee-a995-2d0e3da3a275"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

