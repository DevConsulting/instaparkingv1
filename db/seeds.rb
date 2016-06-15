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
#UbDepartment.create([
#    {ub_country_id: 1, nom_dpto: "Lima"},
#    {ub_country_id: 1, nom_dpto: "Callao"}
#]);

# Creando Provincias
#UbProvince.create([
#    {ub_department_id: 1, nom_prov: "Lima"},
#    {ub_department_id: 1, nom_prov: "Chosica"}
#]);

# Creando Distritos
#UbDistrict.create([
#    {ub_department_id: 1, ub_province_id: 1, nom_dist: "San Isidro"},
#    {ub_department_id: 1, ub_province_id: 1, nom_dist: "San Miguel"},
#    {ub_department_id: 1, ub_province_id: 1, nom_dist: "Surco"}
#]);

# Creando el Tipo de Espacio
SpaceType.create([
    {nom_space_type: "Camino de Entrada"},
    {nom_space_type: "Garaje"},
    {nom_space_type: "Parking"}
]);

# Creando el Tipo de Servicios
Service.create([
    {nom_service: "De Carga Eléctrica"},
    {nom_service: "Cámara de Vigilancia"},
    {nom_service: "Cubierto"},
    {nom_service: "Personal de Seguridad"},
    {nom_service: "Entrada Múltiple / Salida"},
    {nom_service: "Acceso Restringido"},
]);

# Creando Tipo de Persona
TypeOfferPerson.create([
    {nom_type_offer: "Natural"},
    {nom_type_offer: "Jurídica"}
]);