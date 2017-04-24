 ## Project :: GnuCobol 2.0 R2 on Alpine Linux.
 ***
 `Wanted to Bring more visibility to this Project, make it easier to build and Dockerizer it`
 
 ### Vagrant Build Environment
 > Alpine Linux v3.4 (3.4.0) Development Environment
 > Vagrant 1.8.5 with Virtual Box provisioner
 
 * Thing to note: Alpine out of the box does not support virtual box additions.*
 * Thus I use NFS `config.vm.synced_folder ".", "/vagrant", type: "nfs"` *
 ** Additional Note here when you vagrant up the box it will ask for a Admin/root access **
 
 Vagrant up should result in a complete build of gnu_cobol in /home/vagrant/chroot
 
 ***
 ### Docker Environment
 > Docker 17.03.1-ce 
 * docker build ./
 
 ### HowTo's
 Building Gnu Cobol.
 
 1) Vagrant up
 2) vagrant ssh
 3) cd chroot
 4) bin/cobc -V

`Basically, I did all the hard work in the Vagrant File lines 26 - 29.`

## License
The Dockerfiles in this repository are licensed under the GPL 2 or later.
