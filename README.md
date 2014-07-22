# A Docker-friendly CouchDB installation

> Built on the work of [baseimage-docker](https://github.com/phusion/baseimage-docker), docker-couchdb is a minimal CouchDB installation, configured to be friendly to the Docker ecosystem.

This container is available for pulling from [the Docker registry](https://index.docker.io/u/terinjokes/couchdb)!

---

## What's Inside?

In addition to what [baseimage-docker includes](https://github.com/phusion/baseimage-docker#overview), this container contains:

- CouchDB 1.6.0.
- A Runit service to ensure CouchDB is brought up with the container and is restarted on crashes.
- A boot task to ensure permissions are properly set, allowing the database to live outside the container.

## Saving the database outside the container
You can save the databases outside the container by mapping it to a directory on your host:

```
docker run -v /path/on/host/couchdb:/opt/couchdb/var/lib/couchdb/:rw terinjokes/couchdb
```

For more information, see the Docker documentation on [mounting a host directory](http://docs.docker.io/en/latest/use/working_with_volumes/#mount-a-host-directory-as-a-container-volume).

## Related Projects

- Looking to create a private npmjs registry? [docker-npmjs](https://github.com/terinjokes/docker-npmjs).
- Want a mirror of the public npmjs registry? [enjoy skim](https://github.com/terinjokes/docker-npmjs-skim).
- Private registry with delegation to a public registry more your taste? [docker-npmjs-delegate](https://github.com/terinjokes/docker-npmjs-delegate).
