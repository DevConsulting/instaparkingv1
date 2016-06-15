class Service < ActiveRecord::Base
    
    # Relaciones
    has_many :space_characteristics                                             # Un Servicio pertecene a muchas carecterísticas
    has_many :spaces, :dependent => :destroy, through: :space_characteristics   # Un Servicio pertecene a muchas espacios a travez de muchas características
    
    # Utilizando atributos de la Tabla Espacio y Espacio Características
    accepts_nested_attributes_for :space_characteristics
    accepts_nested_attributes_for :spaces
    
end
