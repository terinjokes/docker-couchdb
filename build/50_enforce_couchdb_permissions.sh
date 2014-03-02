# Docker attaches shared directories as owned by root
set -e
chown -R couchdb:couchdb /opt/couchdb/etc/couchdb /opt/couchdb/var/lib/couchdb /opt/couchdb/var/log/couchdb /opt/couchdb/var/run/couchdb
chmod 0770 /opt/couchdb/etc/couchdb /opt/couchdb/var/lib/couchdb /opt/couchdb/var/log/couchdb /opt/couchdb/var/run/couchdb
