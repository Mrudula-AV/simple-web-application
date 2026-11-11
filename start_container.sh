
#!/bin/bash
set -e

# Update packages and install Docker
apt-get update -y
apt-get install -y docker.io

# Start Docker
systemctl enable --now docker

# Pull Docker image
docker pull mrudulaav/simple-web-application:latest

# Remove old container
docker rm -f simple-web-application 2>/dev/null || true

# Start new container
docker run -d --name simple-web-application -p 5000:5000 mrudulaav/simple-web-application:latest

# Verify container
docker ps
