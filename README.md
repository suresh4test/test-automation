# Provision and Configure Linux VM  Using Vagrant,Ansible and Docker

Pre-requisites :
    Install vagrant 
    
Steps:
    Clone this repo "https://github.com/suresh4test/test-automation"
    
    cd test-automation && vagrant up
   
Application Access:
     Run http://127.0.0.1:8080  from Browser or
     
     Run curl -i http://127.0.0.1:8080 from CLI or
     
     Get VM static IP address from Vagrantfile which we set or from VM(ifconfig,ip a give the IP) and run http://<IP>:8080 .
