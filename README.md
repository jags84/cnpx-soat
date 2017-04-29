# CNPX SOAT

## Background:
The task is to create a simple web application to buy vehicles insured policies using Ruby on Rails

## Instructions
1. To buy a policy for a vehicle, you must sign up in the application
2. You can create N policies, after create a policy you have to pay it
3. All the Payment process is simulated, is not using a payment gateway
4. A user can edit his information
5. A user can delete an unpaid policy
6. To go to admin site go to /admin using user: admin@example.com password: password
7. You can't be in the admin and the application in the same moment using same browser ( you can't have 2 sessions in the same app )

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

## RSPEC
```
  rspec
```

## API's
