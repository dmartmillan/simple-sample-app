#!/usr/bin/env bash
  

# Update system
if [[ $* == -u ]] || [[ $* == --update ]]; then
        echo "Updating package manager..."
        sudo apt update >/dev/null 2>/dev/null
        echo "Package manager updated."
fi

# Docker
echo "Installing docker..."
if type docker >/dev/null 2>&1; then
        echo "docker already installed."
else
        sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common &>/dev/null
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add &>/dev/null
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"  &>/dev/null
        sudo apt-get update &>/dev/null
        sudo apt-get -y install docker-ce &>/dev/null
        sudo usermod -aG docker ${USER} &>/dev/null
        echo "docker installed. Reboot is needed."
fi

echo "Installing docker-compose"
if type docker-compose >/dev/null 2>&1; then
        echo "docker-compose already installed."
else
        sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &>/dev/null
        sudo chmod +x /usr/local/bin/docker-compose &>/dev/null
        sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &>/dev/null
        echo "docker-compose installed."
fi
