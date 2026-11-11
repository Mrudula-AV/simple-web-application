#!/bin/bash
set -e

sudo docker stop simple-web-application
sudo docker rm -f simple-web-application
