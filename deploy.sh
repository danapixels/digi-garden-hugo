#!/bin/bash
# Deployment script for DigitalOcean droplet

echo "Starting deployment..."

# Navigate to site directory
cd /var/www/danablog.dev

# Pull latest changes
echo "Pulling latest changes from GitHub..."
git pull origin main

# Build the site
echo "Building Hugo site..."
hugo --minify

# Copy built files to web root
echo "Copying built files..."
cp -r public/* /var/www/danablog.dev/

echo "Deployment completed successfully!"
