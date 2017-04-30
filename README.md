# CNPX SOAT

## Background:
The task is to create a simple web application to buy vehicles insurance policies using Ruby on Rails

## Instrucciones
1. Para comprar una póliza para un vehículo, debe registrarse en la aplicación
2. Puede crear N póliza, después de crear una póliza puede pagarla
3. Todo el proceso de pago se simula, no se utiliza una pasarela de pago
4. Un usuario puede editar su información
5. Un usuario puede eliminar una póliza no pagada
6. Para ir al sitio de administración vaya a /admin usando el usuario: admin@example.com y contraseña: password
7. No puedes estar en el admin y a la aplicación en el mismo momento usando el mismo navegador (no puedes tener 2 sesiones en la misma aplicación)
8. UserMailer necesita una configuración SMTP para enviar correos electrónicos, agregue su configuración SMTP en su archivo enviroment.rb dentro de config/enviroments
9. Toda las coberturas se toman del documento Prueba_tecnica_2017.pdf y se asumen que son fijas para todas las pólizas
10. **** Debe ejecutar los comandos que aparecen en la sección DB para importar los datos ****


## Instructions
1. To buy a policy for a vehicle, you must sign up in the application
2. You can create N policies, after create a policy you have to pay it
3. All the Payment process is simulated, is not using a payment gateway
4. An user can edit his information
5. An user can delete an unpaid policy
6. To go to admin site go to /admin using user: admin@example.com and password: password
7. You can't be in the admin and the application at the time using the same browser ( you can't have 2 sessions in the same app )
8. UserMailer needs a SMTP configuration to send emails, add your SMTP configuration in your enviroment.rb file inside config/enviroments
9. All the coverage where taken from document Prueba_tecnica_2017.pdf and are assumed to be fixed for all policies
10. **** You must run the DB commands to import the data ****


## Requirements:
```
Ruby 2.4.0
Rails 5.0.2
```

## Bundle:
```
  bundle install
```

## DB
```
  rake db:create db:migrate db:seed
```

## RUN
```
  rails s
```

## TEST
```
  rspec
```

## API's
Every request must have .json extension
```
1. Plate Validation Service
show GET /api/plates/plate_number.json

2. Policies
index GET /policies.json
show GET /policies/id.json
create POST /policies.json
delete DELETE /policies/id.json

3. Payment
create POST /policies/:policy_id/payments.json
```
