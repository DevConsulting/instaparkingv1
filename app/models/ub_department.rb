class UbDepartment < ActiveRecord::Base
    belongs_to :ub_countrys
    has_many :ub_provinces
end
