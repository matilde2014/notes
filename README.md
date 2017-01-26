# PASO PARA EJECUTAR LA APLICACIÓN


## El primer paso es crearse una cuenta en Cloudinary. Una vez creada, 
## entrar en el dashboard para ver la clave del API para conectar con tu 
## cuenta de cloudinary. Hay que definir en nuestro sistema 4 variables 
## de entorno con estas claves de API. Concretamente, estas son las 
## variables de entorno que hay que definir. Se pueden añadir al .bashrc:

## export CLOUDINARY_CLOUD_NAME= <Cloud name>
## export CLOUDINARY_API_KEY=<API Key>
## export CLOUDINARY_API_SECRET=<API Secret>
## export CLOUDINARY_URL=<Cloudinary URL>

##El segundo paso es instalar ruby se recomienda usar el gestor de 
## versiones de ruby RVM para ello entra en la web de RVM https://rvm.io/
## y seguir guía de instalación
 
## Instalar el Ruby versión 2.2.4

## Entrar en el proyecto y ejecutar

## bundle install --without production

## Instalar todas las gemas de las que depende la aplicación que se encuentran
##en el fichero Gemfile

## Si falla alguna Gema puede ser que en tu sistema operativo no tengas instalada
## alguna de las dependencias

## Crear el fichero config/database.yml : puedes partir del fichero 
## config/database.yml.example para generarlo.

## rake db:migrate && rake db:test:prepare

## Crear usuario inicial de prueba: rake db:seed

## rails server

 