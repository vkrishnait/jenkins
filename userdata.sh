sudo apt-get -y update
# Install httpd 
sudo apt-get -y install nginx
hostname http-server
echo "newhostname" > /etc/hostname
sudo systemctl start nginx
