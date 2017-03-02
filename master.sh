#!/usr/bin/env bash

sudo apt-get install sshpass
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
sshpass -p vagrant ssh-copy-id  -o StrictHostKeyChecking=no vagrant@192.168.33.11
sshpass -p vagrant ssh-copy-id  -o StrictHostKeyChecking=no vagrant@192.168.33.12
sudo cp /vagrant/AnsibleHosts /etc/ansible/hosts
ansible-playbook /vagrant/DeployDocker.yml
sudo docker stack deploy --compose-file /vagrant/docker-stack.yml vote