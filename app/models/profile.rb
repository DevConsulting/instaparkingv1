class Profile < ActiveRecord::Base
    belongs_to :user 
    has_many :profile_phones
    
    accepts_nested_attributes_for :profile_phones
    
    #validates :nombres, presence: { message: "El nombre es obligatorio" }
    #validates :ap_paterno, presence: { message: "El Apellido Paterno es obligatorio" }
    #validates :ap_materno, presence: { message: "El Apellido Materno es obligatorio" }
    #validates :descripcion,  presence: { message: "Es es obligatorio ingresar un descripción" }
    #validates :direccion,  presence: { message: "Es es obligatorio indicar una dirección" }
    

    
end
