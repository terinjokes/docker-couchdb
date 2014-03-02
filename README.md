# A Docker-friendly CouchDB installation

> Built on the work of [baseimage-docker](https://github.com/phusion/baseimage-docker), docker-couchdb is a minimal CouchDB installation, configured to be friendly to the Docker ecosystem.

This container is available for pulling from [the Docker registry](https://index.docker.io/u/terinjokes/couchdb)!

---

## What's Inside?

In addition to what [baseimage-docker includes](https://github.com/phusion/baseimage-docker#overview), this container contains:

- CouchDB 1.5 with a [fast binary match](https://github.com/terinjokes/docker-couchdb/blob/master/build/fast_binary_match.patch) to aid in replication of attachments.
- A Runit service to ensure CouchDB is brought up with the container and is restarted on crashes.
- A boot task to ensure permissions are properly set, allowing the database to live outside the container.



## Related Projects

- Looking to create a private npmjs registry? [docker-npmjs](https://github.com/terinjokes/docker-npmjs).
- Want a mirror of the public npmjs registry? [skim (without attachments)](https://github.com/terinjokes/docker-npmjs-skim) or [fullfat (with attachments)](https://github.com/terinjokes/docker-npmjs-fullfat).
- Private registry with delegation to a public registry more your taste? [docker-npmjs-delegate](https://github.com/terinjokes/docker-npmjs-delegate).
