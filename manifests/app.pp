# Atualizar as listas de pacotes disponiveis
exec {  "apt-update":
command=> "/usr/bin/apt-get update" 
}

#instalar o Apache
package { ["apache2"]:
    present => installed
}

#criar o service do Apache
service { "apache2":
    present => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
    require => package ["apache2"]

}
