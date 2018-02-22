# README

Este archivo README documenta la información necesaria sobre el Servicio Web(Proyecto 1).

Descripción:

# Versión Ruby:
2.2.6

# Gemas Instaladas:
-coffee-script
gem 'coffee-script-source', '1.8.0'
-DataBase Postgres
gem 'pg', '0.18'
-Validates Email Format Of Email'
gem 'validates_email_format_of'
-Awesome Print
gem 'awesome_print'
-mailjet: como servicio de correos
gem 'mailjet', :git => 'https://github.com/mailjet/mailjet-gem.git'

# Configuracion:
Clonar el Proyecto en su Local y ejecutar bundle install

# Creación de Base de Datos:
  Postgres
  database: authentication_project
  username: postgres
  password: postgres
  ejecutar rake db:create

# Inicialización del Proyecto:
ejecutar rails s

Es importante descargar ambos proyectos para que pueda funcionar el flujo completo, ya que uno funciona como Servicio Web y se comunica con el Servicio Web como Servidor Proxy, sus nombres en el repositorio son los siguientes:

Proyecto 1(Actual)
Desafio-Acid-Lab-Servicio-Web: Se encuentra configurado desde Puma.rb con el puerto 3000

Proyecto 2
Desafio-Acid-Lab-Servicio-Web-Servidor-Proxy: Se encuentra configurado desde Puma.rb con el puerto 3001

Requerimiento no Funcional Faltante:
TestControllers
