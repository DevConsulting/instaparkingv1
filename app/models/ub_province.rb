class UbProvince < ActiveRecord::Base
    belongs_to :ub_departments
    
    # Un Perfil tiene una provincia
    has_one :profiles
end
