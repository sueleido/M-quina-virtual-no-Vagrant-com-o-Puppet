# leidson
Vagrant.configure("2") do |config| 
    
    # Informando ao vagrant que vamos utilizar uma imagem do ubuntu

    config.vm.box ="ubuntu/focal64"

    #configurando a VM de aplicação 

    config.vm.define:app do |app_config|
    #app_config.vm.network "private_network", ip: "192.168.1.150"
        config.vm.network "public_network"
        app_config.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y puppet"
    # Instalando o puppet na VM (algumas imagens ja vem com puppet instalado)
        app_config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "./manifests"
        puppet.manifest_file = "app.pp"
    end

    # Utilizando o Virtualbox como provider

        app_config.vm.provider:Virtualbox do |v|
            v.memory = 1024
            v.cpus = 2
        end

    end
end