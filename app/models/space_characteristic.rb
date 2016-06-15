class SpaceCharacteristic < ActiveRecord::Base
    
    # Un Carecterística tiene un tipo de espacio
    belongs_to :service
    
    # Un Carecterística tiene un tipo de espacio
    belongs_to :space
    
    # Utilizando atributos de la Tabla Servicios
    accepts_nested_attributes_for :service
    
end
