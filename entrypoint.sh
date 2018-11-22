#!/usr/bin/env  bash
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

cat > /dashing-icinga2/config/icinga2.json  << EOF
{
  "icinga2": {
    "api": {
      "host": "${ICINGA2_HOSTNAME:=localhost}",
      "port": ${ICINGA2_PORT:=5665},
      "user": "${ICINGA2_USERNAME:=dashing}",
      "password": "${ICINGA2_PASSWORD:=dashingpassword}"
    }
  },
  "icingaweb2": {
    "url": "${ICINGAWEB2_URL:=http://localhost/icingaweb2}"
  }
}
EOF



cd /dashing-icinga2
dashing start
