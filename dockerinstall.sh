
sudo apt update   
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg   # For Debian/Ubuntu-based systems

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null   # For Debian/Ubuntu-based systems

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io 

sudo systemctl start docker
sudo apt-get install docker-compose

sudo docker run hello-world