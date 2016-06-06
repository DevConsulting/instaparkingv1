class UbCountry < ActiveRecord::Base
    
    # Un Perfil tiene un departamento
    has_one :profiles
    
    has_many :ub_departments
    
end
