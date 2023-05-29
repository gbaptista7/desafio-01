Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.name = "01-vagrant-ansible"
  end 

  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 8090
  config.vm.network "public_network", ip: "192.168.15.240"
  
  config.vm.provision "shell", path: "script.sh"
  config.vm.synced_folder "sites/", "/var/www/html"
  

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
