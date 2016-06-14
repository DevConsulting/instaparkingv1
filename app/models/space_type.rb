class SpaceType < ActiveRecord::Base
    
    # Un tipo de espacio tiene muchas caracteristicas
    has_many :space_characteristics
    
end
