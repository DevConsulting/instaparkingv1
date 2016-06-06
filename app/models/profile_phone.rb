class ProfilePhone < ActiveRecord::Base
    
    # El teléfono pertenece a un Perfil
    belongs_to :profile 
    
    # El Tipo de teléfono pertenece a un número de teléfono
    belongs_to :phone_type
    
    #validates_presence_of :num_telefono
end
