Vagrant.configure('2') do |config|
	config.vm.box = 'amag-rails'
	config.vm.network :forwarded_port, guest: 3000, host: 8080
	config.ssh.private_key_path = 'ssh/amag_rsa'
end