# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "xio_app" do |xio_app|
    xio_app.vm.box = "Ubuntu 14.04"
    xio_app.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    xio_app.vm.hostname = "xio-app.local"
    xio_app.vm.network "forwarded_port", guest: 80, host: 8080
    xio_app.vm.provider :virtualbox do |v|
      v.memory = 1024
      v.cpus = 1
    end
    config.vm.provision "shell", path: "bootstrap.sh"
  end
end
