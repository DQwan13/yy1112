#!/bin/sh
if [ ! -f UUID ]; then
  UUID="000b73e2-bc2d-4d25-9274-0bf1e13ac687"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

