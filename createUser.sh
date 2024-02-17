#!/usr/bin/env bash
NEWUSER=andyhuang
SSHCredential='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoy3vAqWFmDf5V2Pvec0KfgmCCiqEJ0aX67xKkGXlfygun8o1sSM/iGDA18StPjZPyg8XsfGr+se9IEJHDMQ2+KLax2OJqVRRKPCfV8JmgxI19lVYCiH7nivgx0MV8PljCW/VxHcLeWuWu/UM4fiCKnxOBCbAsyCfB7g/8XE8ZyLkUZBDhX8zPPs7gtTXZPgdP7Txh+259dvGAwc1whjLV49PHmLlHK/AUBeLiJWlaxbOIoky4xZm95DeV4cuAEKcW/sEl3otP4LERHXhtyEGNKMBSDtlfV3foWJvk+fXwTP1rz9AjHUCaWScsNn0aKa/CysHJwvm8Whd7f+udYObX'
useradd -m -G sudo -s /bin/bash ${NEWUSER}
usermod -aG sudo ${NEWUSER}
mkdir -p /home/${NEWUSER}/.ssh
touch /home/${NEWUSER}/.ssh/authorized_keys
echo $SSHCredential > /home/${NEWUSER}/.ssh/authorized_keys
chown -R ${NEWUSER}:${NEWUSER} /home/${NEWUSER}
echo "${NEWUSER} ALL=NOPASSWD: ALL" > /etc/sudoers.d/${NEWUSER}
