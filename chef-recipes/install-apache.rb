# Receita para instalação, inicialização e ativação do Apache Server
# Instalação utilizando o resource apt em um servidor Ubuntu

# Atualizando repo de pacotes

apt_update 'update' do
  action :update
end

# Instalando o apache 

apt_package 'apache2' do
  action :install

end

# Habilitando o serviço na inicialização e "estartando" o serviço

service 'apache2' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]

end
