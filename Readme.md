##### Download and install necessary softwares
- Install [Vagrant](https://www.vagrantup.com/)

##### Fairly familiar with ansible and puppet

##### Vagrant centos box

- For Dev - Fire up this box, use ansible or puppet to install necessary software, push the binary of the application that you are working on. Yay! you have a webserver to test your code.
- For Ops - Shall bring up this vagrant boxe to test ansible playbooks and puppet modules before putting them in production

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