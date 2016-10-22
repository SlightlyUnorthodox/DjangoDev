# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Specify vagrant box
  config.vm.box = "ubuntu/trusty32"

  # Configure local network settings
  config.vm.hostname = "django-dev"
  #config.hostupdater.remove_on_suspend = false
  config.hostsupdater.aliases = ["django.dev"]

  #config.vm.network "private_network", ip: "192.168.33.113"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 22, host: 22
  # Prevent password requests during setup
  #vagrant ALL=(ALL) NOPASSWD: ALL

  # Allow for Vagrant to use BitBucket ssh keys
  config.ssh.forward_agent = true

  # Allow provisioning of bootstrap files
  config.vm.provision "shell" do |s|
    s.path = "bootstrap.sh"
  end

  # # Update git repository and enforce Unix line endings
  # config.vm.provision "shell", run: "always" do |s|
  #   s.inline = "echo 'RUNNING: git update'"
  #   s.inline = "cd /vagrant && git pull && git rm --cached -rf . && git diff --cached --name-only -z | xargs -n 50 -0 git add -f"
  # end

  # Open django page
  if Vagrant.has_plugin?('vagrant-triggers')
    config.trigger.after [:up] do
      system("open -a 'Google Chrome.app' #{'localhost:8000'}")
    end
  end

end
