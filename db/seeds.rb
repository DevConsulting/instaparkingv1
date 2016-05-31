# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Creando Tipo de Número Telefonicos
phone_type = PhoneType.create([
    {nombre_tip_telefono: "Celular"},
    {nombre_tip_telefono: "Fijo"}
]);

# Creando Paises
UbCountry.create([
    {nom_pais: "Perú"}
]);

# Creando Departamentos
#UbDepartment.create([
 #   {nom_dpto: ""}
#]);*/