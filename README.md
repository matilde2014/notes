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



##6. Miércoles 13 de Julio

Mejorar el spec request

Añadir la tabla de marks

Al añadir una tabla hay que realizar los siguientes cambios:
Modificar el spec del modelo
Modificar el spec del request

##7. Jueves 14 de Julio

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

##8. Lunes 18 de Julio


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
 
##9. Martes 19 de Julio
 
 Intentar mirar la pestaña de navegación de home ver como arreglarla
 
 
 Añadir user_id a los student
 
 No se pueden crear estudiantes que el user_id sea nulo por lo que hay 
 que ponerlo

 Hay que comprobar cuando se crea un usuario que en su user_id se ha puesto 
 el del actual en el test del controador


##10. Miércoles 20 de Julio
 
 Revisar las restricciones anteriores
 y hacer lo mismo con los subjects
 
 save_and_open_page

## 11. Jueves 21 de Julio
Realizar el enroll

Ficheros en /controllers/
subjects_controller
 
Ficheros en /views/subjects/ 
_enroll.htm.erb
_form.html.erb
 

## 12. Martes 2 de Agosto
Repasar lo de los últimos días
Cambiar la apariencia de las siguientes tablas
/views/subjects/index.html.erb
/views/students/index.erb

Realizar documentación en el documento latex de lo realizado hasta ahora

Bibliografía
Implementación

## 13. Jueves 4 de agosto 
En la memoria añadir puntos de Estudio de herramientas y metodologías de desarrollo
Realizar una portada
Completar las referencias o bibliografía

## 14. Lunes 29 de agosto
Vuelo para recordar cosas de:

a. Memoria
b. Implementación
c. Tener en cuenta también el modelado
 

a . memoria
    Voy a rellenar en el diseño, el diseño de la base de datos
    En la implementación como se ha ido diseñando el modelo
 
 
b. implementación 
 
 Voy a trabajar un poco con la consola de rails para ve como está organizada
 actualmente la base de datos.
 
 raisl console
 
 Subject.all
 Student.all
 
 Cosas que tengo que mirar mañana ver en la implementación de la memoria 
 como seguir rellenandola y poniendo las cosas que se han realizado hasta
 ahora.
 
## 15. Viernes 23 de septiembre
 
 Este día he recordado cosas que había realizado
 Planificación
 Lunes: 3 horas por la tarde (16:00 -19:00)
 Martes: 3 horas por la tarde (17:00 - 20:00)
 Miercoles: 3 horas por la tarde (17:00 - 20:00)
 Jueves: (Este día durante la clase mirar cosas de la memoria porque tengo pocos alumnos)
 Viernes: 2 horas por la mañana (9:00 - 11:00)
 

 
 Sábado: 2 horas mínimo
 Dómingo: 2 horas mínimo
 
 Estoy mirando cosas de la memoria como podía mejorarla.
 
## 16. Lunes 26 de septiembre 
 Realizar cosas de la memoria
 
##17. Martes 27 de septiembre
  Realizar cosas de la memoria
  
##18. Viernes 30 de septiembre
 Realizar cosas de la memoria
 
##19. Viernes 7 de octubre
 Realizar cosas de la memoria
 
##20. Martes 25 de octubre
 Realizar cosas de la memoria en concreto:
 
 4.4 Elección de herramientas 
 
      
     4.4.1 Elección de herramientas de desarrollo
       
       4.4.2 Elección de plataforma de control de la nube
       
       4.4.3 Elección de herramientas de pruebas
 
 5 Metodologı́a de desarollo
 
 5.1 Programación extrema (XP - eXtreme Programming
 
 5.2  Metodologı́a TDD
 
 5.3. Metodologı́a BDD
 
 5.4 Desarrollo ATDD
 
 

##21. Miercoles 26 de octubre
 Realizar cosas de la memoria en concreto:
 
 6 Recursos utilizados
 
 6.1 Recursos hardware
 
 6.2 Recursos software
 
 6.2.1 Sistemas operativos
 
 6.2.2 Navegador Web
 
 6.2.3 Entorno de desarrollo integrado
 
 6.2.4 Sistema de control de   versiones
 
 6.2.5 Editores de texto
 
 6.2.6 Editores de bocetos
 
 6.3 Tecnologı́as utilizadas
 
 6.3.1 a . . . . . . . . . . .
 
 6.3.2 b . . . . . . .
 