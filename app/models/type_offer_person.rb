class TypeOfferPerson < ActiveRecord::Base
    
    # Un Tipo de Ofertante tiene muchas ofertas
    has_many :spaces
    
end
