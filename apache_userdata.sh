#!/bin/bash
# Update package list
sudo apt-get update -y

# Install Apache2
sudo apt-get install apache2 -y

# Enable Apache2 service to start on boot
sudo systemctl enable apache2

# Start Apache2 service
sudo systemctl start apache2

# Create a custom index.html
echo "<html><body><h1>Deployed with Terraform and Apache2</h1></body></html>" | sudo tee /var/www/html/index.html
