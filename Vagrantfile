Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    #config.vm.synced_folder "app", "/home/ubuntu/app"
    #config.vm.provision "shell", path: "environment/provisions.sh", privileged: false

    config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "IT-Job-Task"


    chef.arguments = "--chef-license accept"   ##Not sure aabout this gonna test to see if it works without it##



  end
end
