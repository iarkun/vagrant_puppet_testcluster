# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.define "puppetmaster" do |pm|
    pm.vm.box = "centos/7"
    pm.vm.network "private_network", ip: "192.168.33.10"
    pm.vm.hostname = "puppetmaster"
    pm.vm.provision "shell", path: "script_puppetmaster.sh"
  end

  config.vm.define "puppet-agent-centos" do |pac|
    pac.vm.box = "centos/7"
    pac.vm.network "private_network", ip: "192.168.33.11"
    pac.vm.hostname = "centos-agent"
    pac.vm.provision "shell", path: "script_puppetagent-centos.sh"
  end

  config.vm.define "puppet-agent-ubuntu" do |pau|
    pau.vm.box = "ubuntu/xenial64"
    pau.vm.network "private_network", ip: "192.168.33.12"
    pau.vm.hostname = "ubuntu-agent"
    pau.vm.provision "shell", path: "script_puppetagent-ubuntu.sh"
  end

end
