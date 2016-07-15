Docker Image for Openstack Keystone Service
===========================================

This container is used to run automated tests.

- Container based on Ubuntu 16.04
- Keystone version 9.0.0 (Mitaka release)

Default credentials
-------------------

- Username: admin
- Password: admin
- Region: RegionOne
- URL: `http://${CONTAINER_HOSTNAME}:5000/v2.0`

Download image
--------------

```bash
docker pull internap/docker-keystone
```

Build Docker image
------------------

```bash
docker build -t keystone .
```

Run container
-------------

```bash
docker run --name keystone -p 5000:5000 -p 35357:35357 -e CONTAINER_HOSTNAME=keystone keystone
```

License
-------

Apache 2.0 License
