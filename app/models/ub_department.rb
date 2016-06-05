class UbDepartment < ActiveRecord::Base
    
    # Un Perfil tiene un departamento
    has_one :profiles
    
    #abelongs_to :ub_countries
    
end
