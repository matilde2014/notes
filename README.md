# PASO PARA EJECUTAR LA APLICACIÓN


## Primer paso:
 Crearse una cuenta en Cloudinary 
 Entrar en el dashboard para ver la clave del API para conectar con tu cuenta de cloudinary. 
 Hay que definir en nuestro sistema 4 variables de entorno con estas claves de API. Concretamente, 
 estas son las variables de entorno que hay que definir, se pueden añadir al .bashrc:

 export CLOUDINARY_CLOUD_NAME= "Cloud name"
 
 export CLOUDINARY_API_KEY= "API Key"
 
 export CLOUDINARY_API_SECRET= "API Secret"
 
 export CLOUDINARY_URL= "Cloudinary URL"
 

## Segundo paso:
   Instalar ruby se recomienda usar el gestor de versiones de ruby RVM para ello entra en la web de 
   RVM https://rvm.io/ y seguir guía de instalación
 
## Tercer paso:
   Instalar el Ruby versión 2.2.4

## Cuarto paso:
   Entrar en el proyecto y ejecutar
  
   bundle install --without production

## Quinto paso:
   Instalar todas las gemas de las que depende la aplicación que se encuentran en el fichero Gemfile

   Si falla alguna Gema puede ser que en tu sistema operativo no tengas instalada alguna de las dependencias

## Sexto paso:

   Crear el fichero config/database.yml : puedes partir del fichero config/database.yml.example para generarlo.

## Septimo paso:
   rake db:migrate && rake db:test:prepare

## Octavo paso:
   Crear usuario inicial de prueba: rake db:seed

## Noveno paso:
   rails server

 