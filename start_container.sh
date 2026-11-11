
#!/bin/bash
set -e

# Install Docker
sudo apt update -y
sudo apt install -y docker.io

# Start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Check available Docker images
sudo docker images

# Pull Docker image from Docker Hub
sudo docker pull mrudulaav/simple-web-application:latest

# Remove existing container if present
sudo docker rm -f simple-web-application 2>/dev/null || true

# Run Docker container
sudo docker run -d --name simple-web-application -p 5000:5000 mrudulaav/simple-web-application:latest

# Check container status
sudo docker ps -a

# Test application
sudo curl -v http://localhost:5000
