#!/usr/bin/env bash

keystone-manage bootstrap \
    --bootstrap-password admin \
    --bootstrap-username admin \
    --bootstrap-project-name admin \
    --bootstrap-role-name admin \
    --bootstrap-service-name keystone \
    --bootstrap-region-id RegionOne \
    --bootstrap-admin-url http://${CONTAINER_HOSTNAME}:35357/v2.0 \
    --bootstrap-public-url http://${CONTAINER_HOSTNAME}:5000/v2.0 \
    --bootstrap-internal-url http://${CONTAINER_HOSTNAME}:5000/v2.0

cd /var/lib/keystone
/usr/bin/keystone-all

exec "$@"
