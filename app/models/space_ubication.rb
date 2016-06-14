class SpaceUbication < ActiveRecord::Base
    
    # Una ubicación pertenece una ubicación
    has_one :space
    
end
