# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|  
  

  #Vagrant box with puppet preinstalled
  config.vm.box = "centOS-6.5-puppet"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
  

  #Sync the current directory to /vagrant
  config.vm.synced_folder ".", "/vagrant"
  
  #Networking between the host and vagrant box
  
  #Forward the port only
  #config.vm.network "forwarded_port", guest: 80, host: 1234
   
  #Make it look like another machine accessible only by the host
  config.vm.network "private_network", ip: "192.168.50.4"


  # vagrant provision - will run provisioning
  # vagrant provision --provision-with ansible
  config.vm.provision "ansible" do |ansible|
    
    #Playbook to make sure /vagrant path exist
    
    ansible.playbook = "provisioning/ansible/playbooks/checkpath.yml"
    
    #Playbook to create a httpsimplewebserver on the chosen path
    #To verify the below playbook go to your browser and hit the ip address defined in your private_network (192.168.50.4)
    #Uncomment the below line to use it
    #ansible.playbook = "provisioning/ansible/playbooks/HttpServer.yml"
  
  end

  # vagrant provision --provision-with puppet
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "provisioning/puppet/modules/helloworld/manifests"
    puppet.manifest_file = "init.pp"
  end

end
  