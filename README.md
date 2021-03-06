![Debian Logo](logo.png)

# Packer Project - Debian
Packer project to generate Debian Vagrant Boxes.

* Debian 8.8.0 (Jessie)
    * Provider(s)          : VirtualBox.
    * Arch(s)              : i386, amd64. 
    * Installation Type(s) : Standard (Console), Desktop (GNOME).
     
    * Additional Info      : 
        * Root login is enabled by default and the password is <i>123.Password</i> 
        * Source list fallback(s): 1° Brasil, 2° USA, 3° Japan.   
        * Virtualbox Provider:
            * Standard machines has 512 MB of main system memory and 1 CPU. 
              Desktop machines has 2048 MB of main memory and 2 CPUs. 
              Both machines has 32768 MB of hard drive dynamically allocated. 
              Both machines have guest additions installed.
              None of these machines has audio, 3D video or usb enabled by 
              default.
      
    * The following boxes are built with above configuration:
        * [(virtualbox) xnerv/standard-debian-8-i386.box](https://atlas.hashicorp.com/xnerv/boxes/standard-debian-8-i386.box)
        * [(virtualbox) xnerv/standard-debian-8-amd64.box](https://atlas.hashicorp.com/xnerv/boxes/standard-debian-8-amd64.box)
        * [(virtualbox) xnerv/desktop-debian-8-i386.box](https://atlas.hashicorp.com/xnerv/boxes/desktop-debian-8-i386.box)
        * [(virtualbox) xnerv/desktop-debian-8-amd64.box](https://atlas.hashicorp.com/xnerv/boxes/desktop-debian-8-amd64.box)
        
* Debian 7.11.0 (Wheezy)
    * Provider(s)          : VirtualBox.
    * Arch(s)              : i386, amd64. 
    * Installation Type(s) : Standard (Console), Desktop (GNOME).
     
    * Additional Info      : 
        * Root login is enabled by default and the password is <i>123.Password</i> 
        * Source list fallback(s): 1° Brasil, 2° USA, 3° Japan.   
        * Virtualbox Provider:
            * Standard machines has 512 MB of main system memory and 1 CPU. 
              Desktop machines has 2048 MB of main memory and 2 CPUs. 
              Both machines has 32768 MB of hard drive dynamically allocated. 
              Both machines have guest additions installed.
              None of these machines has audio, 3D video or usb enabled by 
              default.
      
    * The following boxes are built with above configuration:
        * [(virtualbox) xnerv/standard-debian-7-i386.box](https://atlas.hashicorp.com/xnerv/boxes/standard-debian-7-i386.box)
        * [(virtualbox) xnerv/standard-debian-7-amd64.box](https://atlas.hashicorp.com/xnerv/boxes/standard-debian-7-amd64.box)
        * [(virtualbox) xnerv/desktop-debian-7-i386.box](https://atlas.hashicorp.com/xnerv/boxes/desktop-debian-7-i386.box)
        * [(virtualbox) xnerv/desktop-debian-7-amd64.box](https://atlas.hashicorp.com/xnerv/boxes/desktop-debian-7-amd64.box)

## Usage
1. You need to have installed in your system the following softwares:
    * [VirtualBox](https://www.virtualbox.org)                 - Tested with version 5.1.x
    * [Vagrant](https://www.vagrantup.com)                     - Tested with version 1.9.6
    * [vbguest](https://github.com/dotless-de/vagrant-vbguest) - Tested with version 0.14.2
    * [Packer](https://www.packer.io)                          - Tested with version v1.0.2

2. Clone this git repository in /some/path and go to him.

3. Call `build-<version>-<provider>.bat` to build the vagrant boxes. They will 
   be located in the build directory inside this repository.

4. Call `install-<version>-<provider>.bat` to add the generated vagrant boxes
   to your system. 

   <i>REMARKS</i>: Replace `<version>` by the desired version of Debian 
   like "8.8.0" and replace `<provider>` by the virtualization provider like 
   "virtualbox".

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request =^.~=
6. Be happy \O/

## License
BSD 3