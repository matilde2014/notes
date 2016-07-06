# PFC Matilde Gómez-Ojeda, Cuaderno del profesor

## Scaffolding
```
$ rails g scaffold students name:string birthday:date
```

## Para migraciones

```
$ rake db:migrate && rake db:test:prepare
```

## Para tests

```
$ rspec spec/
```

##Lunes 4 de Julio
### Pedir documentaión para ampliar el plazo el proyecto

###Instalación del Kile
sudo apt install kile
sudo apt-get update

###Instalación de Rubymine

###Creación un proyecto que se llama: /Documentos/rails_projects/notes

cd Documentos/
mkdir rails_projects
cd rails_projects/

###Creacion de una tabla con scaffold
rails generate scaffold students phone_number:string name:string birth_date:date

###Instalación del git

###Se va a utilizar la metodología TDD
###Fichero Gemfile
Se ha modificado algunas cosas como capybara y rspec. Respecto a rspec el fichero dummy_spec.rb nos sirve para testear que todo va correctamente.

###Se ha subido el proyecto a github

###Copiado el proyecto de Raul
sudo apt-get install git
git clone http://github.com/RaulAlcaniz/Pfc.git

###Añadido cosas al fichero .gitignore

###Creado el fichero README.md que es para ofrecer información de lo que estamos haciendo

###Modificación del fichero routes.rb

###Comando a tener en cuenta: 
ruby -v
rvm current
history
bundle install --without production

##Martes 5 de julio

###Subir los cambios al proyecto
git add .
git commit -a -m "RSpec with errors"
git push origin master

###Para probar los test que ha generado en el fichero students_controller_spec.rb
rspec spec/controllers/

Bajado la versión porque teníamos problemas en el spec con scaffold

Mirar mejor otro proyecto 	
	https://github.com/railstutorial/sample_app_rails₄

Pasos para subir un proyecto o bajarlo

SPEC que hay que tocar
  	rspec spec/requests/
  	rspec spec/controllers/
  	rspec spec/models/

cp config/database.yml.example config/database.yml
rake db:migrate && rake db:test:prepare

Miercoles 6 de Julio