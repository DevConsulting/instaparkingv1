class Contacto < ActiveRecord::Base

    validates :nombre, presence: {message: "El campo no puede quedar vacio .."}
    validates :correo, presence: {message: "El campo no puede quedar vacio .."}
    validates :mensaje, presence: {message: "El campo no puede quedar vacio .."}

end

