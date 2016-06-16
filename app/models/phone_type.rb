class PhoneType < ActiveRecord::Base
    
    # El Tipo de teléfono tiene de uno a muchos números de telefonos
    has_many :profile_phones
    
end
