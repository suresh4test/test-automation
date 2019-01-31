Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.10"
  # config.vm.network "private_network", type: "dhcp"   -- reserved ip assigned automatically
  config.vm.network "forwarded_port", guest: 8080, host: 8090
  ####### Provision #######
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = true
  end
end
