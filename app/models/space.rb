class Space < ActiveRecord::Base
    
    # Un espacio tiene una ubicacion
    has_one :space_ubication
    
    # Un espacio tiene un tipo de ofertante
    belongs_to :type_offer_people
    
    # Un espacio tiene un tipo de espacio
    belongs_to :space_type
    
end
