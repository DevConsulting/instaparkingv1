class Space < ActiveRecord::Base
    
    # Un Espacio pertenece a un usuario
    belongs_to :user
    
     # Un espacio tiene un tipo de ofertante
    belongs_to :type_offer_person
    
    # Un espacio tiene un tipo de espacio
    belongs_to :space_type
    
    # Un espacio tiene una ubicacion
    has_one :space_ubication
    
    # Un Espacio tiene muchas carecterísticas
    has_many :space_characteristics, dependent: :destroy
    has_many :services, through: :space_characteristics
    
    # Utilizando atributos de la Tabla Espacio Ubicacion
    accepts_nested_attributes_for :space_ubication

end
