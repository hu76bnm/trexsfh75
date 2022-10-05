#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "ff2ebda5-5993-42f6-b509-b346aaf76999",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/yubrseryu"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray  run -config=/etc/v2ray/config.json
