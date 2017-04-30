# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Clear DB
Payment.delete_all
Policy.delete_all
VehicleSubType.delete_all
VehicleType.delete_all
AdminUser.delete_all

# MOTOS
v = VehicleType.create!(name: "MOTOS")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 100 c.c.", commercial_rate: 8.26)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "De 100c.c a 200 c.c.", commercial_rate: 11.09)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 200 c.c.", commercial_rate: 12.51)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "MOTOCARROS", commercial_rate: 12.51)
# CAMPEROS Y CAMIONETAS
v = VehicleType.create!(name: "CAMPEROS Y CAMIONETAS")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "0 a 9 años", commercial_rate: 13.29)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "10 años or más", commercial_rate: 15.99)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "0 a 9 años", commercial_rate: 15.88)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "10 años o más", commercial_rate: 18.82)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "0 a 9 años", commercial_rate: 18.63)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "10 años o más", commercial_rate: 21.39)
# CARGA O MIXTO
v = VehicleType.create!(name: "CARGA O MIXTO")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 5 toneladas", commercial_rate: 14.90)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "5 a 15 toneladas", commercial_rate: 21.53)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 15 toneladas", commercial_rate: 27.23)
# OFICIALES ESPECIALES
v = VehicleType.create!(name: "OFICIALES ESPECIALES")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", commercial_rate: 16.77)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500cc a 2500cc", commercial_rate: 21.15)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", commercial_rate: 25.36)
# AUTOS FAMILIARES
v = VehicleType.create!(name: "AUTOS FAMILIARES")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "0 a 9 años", commercial_rate: 7.48)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "10 años o más", commercial_rate: 9.93)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "0 a 9 años", commercial_rate: 9.12)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "10 años o más", commercial_rate: 11.35)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "0 a 9 años", commercial_rate: 10.66)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "10 años o más", commercial_rate: 12.65)
# VEHICULOS PARA SEIS O MAS PASAJEROS
v = VehicleType.create!(name: "VEHÍCULOS PARA SEIS O MAS PASAJEROS")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 2500 c.c", age: "0 a 9 años", commercial_rate: 13.37)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 2500 c.c", age: "10 años o más", commercial_rate: 17.08)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "0 a 9 años", commercial_rate: 17.91)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "10 años o más", commercial_rate: 21.51)
# AUTOS DE NEGOCIOS Y TAXIS
v = VehicleType.create!(name: "AUTOS DE NEGOCIOS Y TAXIS")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "0 a 9 años", commercial_rate: 9.28)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 1500 c.c", age: "10 años o más", commercial_rate: 11.60)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "0 a 9 años", commercial_rate: 11.54)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "1500 c.c a 2500 c.c", age: "10 años o más", commercial_rate: 14.27)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "0 a 9 años", commercial_rate: 14.90)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Más de 2500 c.c.", age: "10 años o más", commercial_rate: 17.49)
# BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO
v = VehicleType.create!(name: "BUSES Y BUSETAS DE SERVICIO PÚBLICO URBANO")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Buses y Busetas", commercial_rate: 21.81)
# SERVICIO PUBLICO INTERMUNICIPAL
v = VehicleType.create!(name: "SERVICIO PÚBLICO INTERMUNICIPAL")
VehicleSubType.create!(vehicle_type: v, sub_type_description: "Menos de 10 pasajeros", commercial_rate: 22.01)
VehicleSubType.create!(vehicle_type: v, sub_type_description: "10 o más de 10 pasajeros", commercial_rate: 31.96)

# Admin User
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
