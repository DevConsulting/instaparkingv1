class Profile < ActiveRecord::Base
    
    # Un Perfil pertenece a un usuario
    belongs_to :user
    
    # Perfil tiene de uno a muchos numeros telefónicos
    has_many :profile_phones
    
    # Un Departamento pertenece a un Perfil
    belongs_to :ub_department
    
    # Utilizando atributos de otros modelos
    accepts_nested_attributes_for :profile_phones
    accepts_nested_attributes_for :ub_department
    
    #validates :nombres, presence: { message: "El nombre es obligatorio" }
    #validates :ap_paterno, presence: { message: "El Apellido Paterno es obligatorio" }
    #validates :ap_materno, presence: { message: "El Apellido Materno es obligatorio" }
    #validates :descripcion,  presence: { message: "Es es obligatorio ingresar un descripción" }
    #validates :direccion,  presence: { message: "Es es obligatorio indicar una dirección" }

end
