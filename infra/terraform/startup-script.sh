#! /bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo docker run -d -p 8080:8080 us-east1-docker.pkg.dev/${project_id}/hello-world:${image_tag}
