sudo apt-get update -y


wget -q -0 - https://pkg.jenkins.io/debain-stable/jenkins.io.key |
  sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debain-stable binary/ > \
/etc/apt/sources.list.d/jenkins.list'

sudo apt-get update
sudo apt-get install jenkins

sudo systemctl daemon-reload
sudo systemctl start jenkins

sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl enable jenkins
sudo systemctl status jenkins