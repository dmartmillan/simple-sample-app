#!/usr/bin/env bash


# Update system
if [[ $* == -u ]] || [[ $* == --update ]]; then
        echo "Updating package manager..."
        sudo apt update >/dev/null 2>/dev/null
        echo "Package manager updated."
fi

# Nodejs
echo "Installing nodejs..."
if type nodejs >/dev/null 2>&1; then
        echo "nodejs already installed."
else
        sudo apt install nodejs -y &>/dev/null
        echo "nodejs installed."
fi

# NPM
echo "Installing npm..."
if type npm >/dev/null 2>&1; then
        echo "npm already installed."
else
        sudo apt install npm -y &>/dev/null
        echo "npm installed."
fi

# Solving NPM global problem
echo "Solving npm global install problem..."
if [[ -d "${HOME}/.npm-global" ]]; then
        echo "Already solved."
else
        mkdir ${HOME}/.npm-global &>/dev/null
        npm config set prefix '~/.npm-global' &>/dev/null
        export PATH=${HOME}/.npm-global/bin:$PATH &>/dev/null
        echo "export PATH=${HOME}/.npm-global/bin:$PATH" >> ${HOME}/.zshrc
        source ${HOME}/.profile &>/dev/null
        echo "problem solved."
fi

# Updating npm
echo "updating npm..."
npm i -g npm@latest &>/dev/null
echo "npm updated."

# Updating node
echo "updating node..."
sudo mkdir -p /usr/local/n &>/dev/null
sudo chown -R $(whoami) /usr/local/n &>/dev/null
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share &>/dev/null
npm i -g n &>/dev/null
n stable &>/dev/null
echo "node updated."

echo "installing angular..."
npm i -g @angular/cli@latest
echo "angular installed."

