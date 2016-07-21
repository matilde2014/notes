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
	http://calm-coast-85106.herokuapp.com/frontmatter
	 

###Subir los cambios al proyecto
git add .

git commit -a -m "RSpec with errors"

git push origin master


###Bajar el proyecto
git clone https://github.com/matilde2014/notes.git

###SPEC que hay que tocar
rspec spec/request/

rspec spec/contollers/

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

https://toolbelt.heroku.com/debian

Esto solo se hace una vez

heroku login

heroku create

Esto las siguientes veces

git push heroku master

heroku run rake db:migrate
heroku open

El nombre de la aplicación será este:

https://limitless-waters-13812.herokuapp.com/


###Usuarios

save_and_open_page

##5. Martes 12 de Julio

### Recordar lo que hicimos con el device

Añadir gema 
gem 'devise'

Seguidamente:

bundle install

rails generate devise:install

rails server

rails generate devise User

rake db:migrate

Ahora en app -controllers - aplication_controller esta: 
before_action :authenticate_user!

En models esta:
user.rb

Y en routes esta:
devise_for :users



##5. Miércoles 13 de Julio

Mejorar el spec request

Añadir la tabla de marks

Al añadir una tabla hay que realizar los siguientes cambios:
Modificar el spec del modelo
Modificar el spec del request

##6. Jueves 14 de Julio

Lograr que el factory girl rails funcione para ello he de mirar estos ficheros
Gemfile
gem 'factory_girl_rails'

devise.rb

spec_helper.rb

aplication.rb

factory_girl.rb

factories/user.rb

Activación e Rubymine
Actualizar el diagrama E-R y añadir tabla de horario

Cosas que se quedan pendientes hacer los cambios realizadoss en request/subject_spec.rb en los otros

Añadir la tabla schedule

Realizar cambios en la memoria

Realice una relacion uno a muchos

##7. Lunes 18 de Julio

Repasar las cosas anteriores
Mirar la relaciones que existen entre estudiante, subject y mark
Mirar como rellenar lo de factories

También hemos realizado una relación n-n entre subject y student

$rails g migration create_join_table_students_subjects student ticket

Realizar pestañas de navegación

gemfile
gem 'coffee-rails', '~> 4.0.0'

//= require bootstrap
custom.css.scss


 /app/views/layouts/aplication.html.erb
 cambiar el body
 /app/views/layouts/_header.html.erb
 copiar este fichero
 
 En seeds.rb hemos puesto un usuario
 
 ##7. Martes 19 de Julio
 
 Intentar mirar la pestaña de navegación de home ver como arreglarla
 
 
 Añadir user_id a los student
 
 No se pueden crear estudiantes que el user_id sea nulo por lo que hay 
 que ponerlo

 Hay que comprobar cuando se crea un usuario que en su user_id se ha puesto 
 el del actual en el test del controador


 ##7. Miércoles 20 de Julio
 
 Revisar las restricciones anteriores
 y hacer lo mismo con los subjects
 
 save_and_open_page


 
