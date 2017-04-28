# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Clear DB
VehicleSubType.delete_all
VehicleType.delete_all

# MOTOS
v = VehicleType.create(name: "MOTOS")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 100 c.c.", commercial_rate: 8.26)
VehicleSubType.create(vehicle_type: v, sub_type_description: "From 100c.c to 200 c.c.", commercial_rate: 11.09)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 200 c.c.", commercial_rate: 12.51)
VehicleSubType.create(vehicle_type: v, sub_type_description: "MOTOCARROS", commercial_rate: 12.51)
# CAMPEROS Y CAMIONETAS
v = VehicleType.create(name: "CAMPEROS Y CAMIONETAS")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "0 to 9 years", commercial_rate: 13.29)
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "10 years or more", commercial_rate: 15.99)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "0 to 9 years", commercial_rate: 15.88)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "10 years or more", commercial_rate: 18.82)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "0 to 9 years", commercial_rate: 18.63)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "10 years or more", commercial_rate: 21.39)
# CARGA O MIXTO
v = VehicleType.create(name: "CARGA O MIXTO")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less then 5 tons", commercial_rate: 14.90)
VehicleSubType.create(vehicle_type: v, sub_type_description: "5 to 15 tons", commercial_rate: 21.53)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 15 tons", commercial_rate: 27.23)
# OFICIALES ESPECIALES
v = VehicleType.create(name: "OFICIALES ESPECIALES")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", commercial_rate: 16.77)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500cc to 2500cc", commercial_rate: 21.15)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", commercial_rate: 25.36)
# AUTOS FAMILIARES
v = VehicleType.create(name: "AUTOS FAMILIARES")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "0 to 9 years", commercial_rate: 7.48)
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "10 years or more", commercial_rate: 9.93)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "0 to 9 years", commercial_rate: 9.12)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "10 years or more", commercial_rate: 11.35)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "0 to 9 years", commercial_rate: 10.66)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "10 years or more", commercial_rate: 12.65)
# VEHICULOS PARA SEIS O MAS PASAJEROS
v = VehicleType.create(name: "VEHICULOS PARA SEIS O MAS PASAJEROS")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 2500 c.c", age: "0 to 9 years", commercial_rate: 13.37)
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 2500 c.c", age: "10 years or more", commercial_rate: 17.08)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "0 to 9 years", commercial_rate: 17.91)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "10 years or more", commercial_rate: 21.51)
# AUTOS DE NEGOCIOS Y TAXIS
v = VehicleType.create(name: "AUTOS DE NEGOCIOS Y TAXIS")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "0 to 9 years", commercial_rate: 9.28)
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 1500 c.c", age: "10 years or more", commercial_rate: 11.60)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "0 to 9 years", commercial_rate: 11.54)
VehicleSubType.create(vehicle_type: v, sub_type_description: "1500 c.c to 2500 c.c", age: "10 years or more", commercial_rate: 14.27)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "0 to 9 years", commercial_rate: 14.90)
VehicleSubType.create(vehicle_type: v, sub_type_description: "More than 2500 c.c.", age: "10 years or more", commercial_rate: 17.49)
# BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO
v = VehicleType.create(name: "BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO")
VehicleSubType.create(vehicle_type: v, commercial_rate: 21.81)
# SERVICIO PUBLICO INTERMUNICIPAL
v = VehicleType.create(name: "SERVICIO PUBLICO INTERMUNICIPAL")
VehicleSubType.create(vehicle_type: v, sub_type_description: "Less than 10 Passenger", commercial_rate: 22.01)
VehicleSubType.create(vehicle_type: v, sub_type_description: "10 or more than 10 Passenger", commercial_rate: 31.96)
