echo "Google Chrome";
echo -ne '\n' | wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt install -y ./google-chrome-stable_current_amd64.deb;
sudo apt update;
echo "tmux";
sudo apt install -y tmux;
sudo apt update;
echo "Git";
sudo apt-get install -y build-essential procps curl file git;
git config --global user.name "Gaurav Waghmare";
git config --global user.name "w.gaurav007@gmail.com";
git config --global credential.credentialStore secretservice;
# stimulate enter keypress
echo -ne '\n' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
# $USER is currently logged in user
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "/home/"$USER"/.profile";
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)";
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -;
echo "NODE";
sudo apt-get install -y nodejs;
sudo apt update;
wget -qO ee rt.cx/ee4 && sudo bash ee;
"Echo Get Git Credential Manager";
sudo chmod +x php_coding_standards.sh;
./php_coding_standards.sh;
sudo apt update;
sudo snap install code --classic;
sudo apt update;
echo "VLC";
sudo snap install vlc;
sudo apt update;
echo "Slack";
sudo snap install slack --classic;
sudo apt update;
sudo snap install zoom-client;
sudo apt update;
chmod +x githubcli.sh;
./githubcli.sh;
sudo apt install -y python3-pip;
pip install --user glances;
sudo apt-get -y install golang-go;
go get github.com/mailhog/MailHog;
sudo apt update;
echo "ZSH";
sudo apt install -y zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
