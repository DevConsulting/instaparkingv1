class SpaceType < ActiveRecord::Base
    
    # Un Tipo de Espacio tiene muchos Espacios
    has_many :spaces
    
end
