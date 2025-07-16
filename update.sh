#!/bin/sh
echo "Updating repo..."
git pull
echo "Building site..."
docker compose up
