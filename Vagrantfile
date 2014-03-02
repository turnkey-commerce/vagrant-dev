# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise32"
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true

  config.vm.box_url = "http://files.vagrantup.com/precise32.box" 

  #config.vm.synced_folder "../vagrant-development", "/home/vagrant/dev"

  config.vm.provider :virtualbox do |vb|
     # Don't boot with headless mode
     #vb.gui = true
  
     # Use VBoxManage to customize the VM. For example to change memory:
     #vb.customize ["modifyvm", :id, "--memory", "1024"]
  end


end