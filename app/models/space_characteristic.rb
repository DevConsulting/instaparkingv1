class SpaceCharacteristic < ActiveRecord::Base
    
    # Un Carecterística tiene un tipo de espacio
    #belongs_to :space
    
    belongs_to :service
    belongs_to :space
    
end
