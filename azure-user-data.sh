#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Welcome to Global Azure Virtual 2022!!!. This Apache Server is deployed using Terraform</h1>" | sudo tee /var/www/html/index.html