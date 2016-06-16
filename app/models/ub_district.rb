class UbDistrict < ActiveRecord::Base
    
    belongs_to :ub_provinces
    
    belongs_to :ub_departments
    
    # Un Perfil tiene un Distrito
    has_one :profiles
    
    has_one :space_ubications
    
end
