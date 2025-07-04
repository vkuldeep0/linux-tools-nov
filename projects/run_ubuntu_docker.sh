#!/bin/bash

# Pull Latest Ubuntu Image
echo "Pulling Ubuntu Image..."
docker pull ubuntu

# Run the container interactively
echo "Running Ubuntu Container..."
docker run -it ubuntu
