class Space < ActiveRecord::Base
    
    # Un espacio tiene una ubicacion
    has_one :space_ubication
    
    # Utilizando atributos de otros modelos
    accepts_nested_attributes_for :space_ubication
    
    # Un Espacio tiene muchas carecterísticas
    has_many :space_characteristic 
    
    # Un espacio tiene un tipo de ofertante
    belongs_to :type_offer_people
    
    # Un espacio tiene un tipo de espacio
    belongs_to :space_type
    
    accepts_nested_attributes_for :space_characteristic
    
end
