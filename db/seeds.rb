# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creando Tipo de Número Telefónicos
PhoneType.create([
    {nombre_tip_telefono: "Celular"},
    {nombre_tip_telefono: "Fijo"}
]);

# Creando Paises
UbCountry.create([
    {nom_pais: "Perú"}
]);

# Creando Departamentos
UbDepartment.create([
    {ub_country_id: 1, nom_dpto: "Lima"},
    {ub_country_id: 1, nom_dpto: "Callao"}
]);

# Creando Provincias
UbProvince.create([
    {ub_department_id: 1, nom_prov: "Lima"},
    {ub_department_id: 1, nom_prov: "Chosica"}
]);

# Creando Distritos
UbDistrict.create([
    {ub_department_id: 1, ub_province_id: 1, nom_dist: "San Isidro"},
    {ub_department_id: 1, ub_province_id: 1, nom_dist: "San Miguel"},
    {ub_department_id: 1, ub_province_id: 1, nom_dist: "Surco"}
]);