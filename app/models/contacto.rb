
class Contacto < ActiveRecord::Base
    
    validates :nombre, presence: {message: "El campo no puede quedar vacio .."}
    validates :correo, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, message: "Correo no válido" }
    validates :mensaje, presence: {message: "El campo no puede quedar vacio .."}

end

