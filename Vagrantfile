# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'fileutils'
require 'open-uri'
require 'tempfile'

Vagrant.require_version ">= 1.8.5"

# Global Variables 
 $vm_box = "maier/alpine-3.4-x86_64"
 $vm_box_master_memory = "2048"
 $vm_box_master_cpus = 4
 #Nodes
 $alpine01 = "10.10.10.100"

Vagrant.configure(2) do |config|
  config.vbguest.auto_update = false    
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.box = $vm_box

  config.vm.define vm_name = "alpine01" do |alpine01|
    alpine01.vm.box = $vm_box
    alpine01.vm.network "private_network", ip: $alpine01
    alpine01.vm.hostname = "alpine01.local"
    alpine01.vm.provision "shell", inline: "sudo apk update; sudo apk add build-base gcc abuild binutils binutils-doc gcc-doc gmp-dev gmp db-dev db clang ncurses-dev"
    alpine01.vm.provision "shell", inline: " curl -L 'https://sourceforge.net/projects/open-cobol/files/gnu-cobol/2.0/gnu-cobol-2.0_rc-2.tar.gz/download' > gnu-cobol-2.0_rc-2.tar.gz; gzip -d gnu-cobol-2.0_rc-2.tar.gz; tar xvf gnu-cobol-2.0_rc-2.tar;"
    alpine01.vm.provision "shell", inline: "sudo mkdir chroot; sudo chown -R vagrant:vagrant chroot; sudo chown -R vagrant:vagrant gnu-cobol-2.0;"
    alpine01.vm.provision "shell", inline: "cd gnu-cobol-2.0; ./configure --prefix=/home/vagrant/chroot; make install"
    alpine01.vm.provider :virtualbox do |vm|
     vm.memory = $vm_box_master_memory
     vm.cpus = $vm_box_master_cpus
    end #end alpine01 provider
  end #end define alpine01
end #end configure
