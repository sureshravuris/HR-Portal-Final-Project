#!/bin/bash
# macOS-specific code
# Change ownership and permissions of /var/lib/mysql and /docker-entrypoint-initdb.d
chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /docker-entrypoint-initdb.d
# Start the original MySQL entrypoint
exec /usr/local/bin/docker-entrypoint.sh "$@"

