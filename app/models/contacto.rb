class Contacto < ActiveRecord::Base
    
    validates :nombre, presence: true
    validates :correo, presence: true
    validates :mensaje, presence: true
    
end
