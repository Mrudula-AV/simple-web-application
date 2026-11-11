#!/bin/bash
set -e

# Install Docker
sudo apt update -y
sudo apt install -y docker.io

# Start Docker
sudo systemctl enable --now docker

# Pull Docker image
sudo docker pull mrudulaav/simple-web-application:latest

# Remove old container if exists
sudo docker rm -f simple-web-application 2>/dev/null || true

# Run new container
sudo docker run -d --name simple-web-application -p 5000:5000 mrudulaav/simple-web-application:latest

# Verify deployment
sudo docker ps
sudo curl -v http://localhost:5000
