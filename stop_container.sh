#!/bin/bash
set -e

docker stop simple-web-application || true
docker rm -f simple-web-application || true
