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

##1. Lunes 4 de Julio
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
sudo apt-get install git

###Se va a utilizar la metodología TDD
###Fichero Gemfile
Se ha modificado algunas cosas como capybara y rspec. Respecto a rspec el fichero dummy_spec.rb nos sirve para testear que todo va correctamente.

###Se ha subido el proyecto a github


###Añadido cosas al fichero .gitignore

###Creado el fichero README.md que es para ofrecer información de lo que estamos haciendo

###Modificación del fichero routes.rb

###Comando a tener en cuenta: 
ruby -v
rvm current
history
bundle install --without production

##2. Martes 5 de julio

###Para probar los test que ha generado en el fichero students_controller_spec.rb
rspec spec/controllers/

###Bajado la versión porque teníamos problemas en el spec con scaffold


###Proyectos que es interesnte mirar
	https://github.com/railstutorial/sample_app_rails_4
	https://github.com/RaulAlcaniz/Pfc

###Subir los cambios al proyecto
git add .

git commit -a -m "RSpec with errors"

git push origin master


###Bajar el proyecto
git clone https://github.com/matilde2014/notes.git

###SPEC que hay que tocar
rspec spec/request/

rspec spec/contollers/

rspec spec/models/


##3. Miercoles 6 de Julio
Revisar la documentación y modificar los spec

Test Unitario

Test Controllador

Test Modelo

Test Comportamiento

A veces al ejecutar el rspec nos da un error y tenemos que ejecutar esto:
 cd ..
 cd notes
 rvm current
 
###Añadir un campo a la tabla de nif

1)rails g migration addNifToStudents

2)Modificar el fichero del migrate

3)http://edgeguides.rubyonrails.org/active_record_migrations.html

4)Hacer la migración:rake db:migrate && rake db:test:prepare

5)Seguidamente hay que hacer cambios en la vista y en el controlador

##4. Jueves 7 de Julio

###Crear la tabla curso
rails g scaffold courses name:string

###Hacer los test de la tabla que acabamos de crear
SPEC - models y como consecuencia en APP- models
SPEC - requests y como consecuencia en APP - models
SPEC - controllers

Borrar la tablar curso
rails destroy scaffold courses

Generar la tabla asignatura
rails g scaffold subjects name:string hours:integer 
rake db:migrate && rake db:test:prepare

SPEC - models y como consecuencia en APP- models
SPEC - requests y como consecuencia en APP - models
SPEC - controllers

###Añadir campos a la tabla alumno


###Crear una relación entre tablas 1 - N
###Crear cuenta en Heroku
ls
https://toolbelt.heroku.com/debian
heroku login

heroku create

git push heroku master

heroku run rake db:migrate

heroku open


 
