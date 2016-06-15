class SpaceUbication < ActiveRecord::Base
    
    # Una ubicación pertenece una ubicación
    belongs_to :space
    
    # Un País pertenece a un Perfil
    belongs_to :ub_country
    
    # Un Departamento pertenece a un Perfil
    belongs_to :ub_department
    
    # Una Provincia pertenece a un Perfil
    belongs_to :ub_province
    
    # Un Distrito pertenece a un Perfil
    belongs_to :ub_district
    
    # Utilizando atributos de otros modelos
    accepts_nested_attributes_for :ub_country
    accepts_nested_attributes_for :ub_department
    accepts_nested_attributes_for :ub_province
    accepts_nested_attributes_for :ub_district
    
end
