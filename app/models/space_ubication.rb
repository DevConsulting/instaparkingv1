class SpaceUbication < ActiveRecord::Base
    
    # Una ubicación pertenece una ubicación
    belongs_to :space
    
end
