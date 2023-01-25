## -*- mode: ruby -*-
## vi: set ft=ruby :

Vagrant.configure(2) do |config|

  ## OS & host name
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "feketerigo-vm"

  ## CPU & RAM
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
    vb.memory = 2048
    vb.cpus = 2
  end

  ## Network
  config.vm.network "forwarded_port", guest: 8888, host: 8888
end
