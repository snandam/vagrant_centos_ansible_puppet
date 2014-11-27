##### Download and install necessary softwares
- Install [Vagrant](https://www.vagrantup.com/)
- Install [Virutalbox](https://www.virtualbox.org/)

##### Vagrant centos box

- For Dev
	+ Fire up the box, use ansible or puppet scripts use for dev or prod to install necessary software, push the binary of the application that you are working on. Yay! you have a webserver to test your code.
	+ Fire up the box, install necessary software you need, create a new vagrant image and use that as base image for everyone to use
- For Ops 
	+ Shall bring up this vagrant boxe to test ansible playbooks and puppet modules before putting them in production
	+ Create a vagrant image with pre-installed softwares to quickly spin up boxes as needed

```sh
	# To bring the vagrant box up
	vagrant up
	# To provision the box after the box is up
	vagrant provision
	# To provision only a specific provider
	vagrant provision --provision-with puppet
	vagrant provision --provision-with ansible
	# login
	vagrant ssh
	# To suspend
	vagrant halt
	# To destroy 
	vagrant destroy
	# For status of the boxes
	vagrant status
```