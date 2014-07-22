#!/bin/bash
set -e
source /build/docker-couchdb/buildconfig
set -x

echo 'deb http://packages.erlang-solutions.com/ubuntu trusty contrib' > /etc/apt/sources.list.d/erlang.list
apt-key add /build/docker-couchdb/erlang_solutions.asc

apt-get update
