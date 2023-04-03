#!/bin/bash

#=============================================================================
# docker install
#   commans from:
#   https://docs.docker.com/engine/install/debian/#install-using-the-repository
# need: su -
# su -
#=============================================================================

if false; then
    apt-get update
    apt-get install \
    ca-certificates \
    curl \
    gnupg
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

# chmod a+r /etc/apt/keyrings/docker.gpg
apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run hello-world

fi

# docker postinstall:
# https://docs.docker.com/engine/install/linux-postinstall/

groupadd docker

# usermod -aG docker $USER
usermod -aG docker de

# Log out and log back in so that your group membership is re-evaluated.
newgrp docker

docker run hello-world

systemctl enable docker.service
systemctl enable containerd.service
