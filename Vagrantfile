## -*- mode: ruby -*-
## vi: set ft=ruby :

## @Description : This is a configuration file that setup my working virtual
## machine. This file should be used with VirtualBox and Vagrant. The guest OS
## is Ubuntu 16.04 xenial.
## @Author      : Junyong Zhao (junyong@seas.upenn.edu)
## @LastEditTime: 2021-07-14 18:31:57

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
