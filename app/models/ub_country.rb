class UbCountry < ActiveRecord::Base
    
    # Un Perfil tiene un departamento
    has_one :profiles
    
    has_one :space_ubications
    
    has_many :ub_departments
    
end
