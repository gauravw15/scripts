wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt install -y ./google-chrome-stable_current_amd64.deb;
sudo apt update;
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -;
sudo apt-get install -y nodejs;
sudo apt install -y git;
git config --global credential.credentialStore secretservice;
sudo apt update;
sudo snap install -y code --classic && ./vscode-extension-install -y.sh;
sudo apt update;
sudo snap install -y vlc;
sudo apt update;
sudo snap install -y slack;
sudo apt update;
sudo snap install -y zoom-client;
sudo apt update;
