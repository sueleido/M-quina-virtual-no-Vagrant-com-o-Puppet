# Atualizar as listas de pacotes disponíveis
exec { 'apt-update':
  command => '/usr/bin/apt-get update',
}

# Instalar o Apache
package { ['apache2']:
  ensure => installed,
}

# Criar o serviço do Apache
service { 'apache2':
  ensure     => running,
  enable     => true,
  hasstatus  => true,
  hasrestart => true,
  require    => Package['apache2'],
}
