class UbDistrict < ActiveRecord::Base
    belongs_to :ub_provinces
    belongs_to :ub_departments
end
