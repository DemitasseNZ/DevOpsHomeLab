# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "node1" do |node1|
    node1.vm.box = "bento/ubuntu-16.04"
    node1.vm.hostname = 'node1'
    node1.vm.network :private_network, ip: "192.168.33.11"
    node1.vm.provision :shell, path: "python.sh"
    node1.vm.provider "virtualbox" do |v|
  		v.memory = 512
  		v.cpus = 1
	end
  end
  config.vm.define "node2" do |node2|
    node2.vm.box = "bento/ubuntu-16.04"
    node2.vm.hostname = 'node2'
    node2.vm.network :private_network, ip: "192.168.33.12"
    node2.vm.provision :shell, path: "python.sh"
    node2.vm.provider "virtualbox" do |v|
  		v.memory = 512
  		v.cpus = 1
	end
  end
  config.vm.define "master", primary: true do |master|
    master.vm.hostname = 'master'
    master.vm.box = "bento/ubuntu-16.04"
    master.vm.network :private_network, ip: "192.168.33.10"
    master.vm.provision :shell, path: "ansible.sh"
    master.vm.provider "virtualbox" do |v|
  		v.memory = 512
  		v.cpus = 1
	end
  end

end
