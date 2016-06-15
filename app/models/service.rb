class Service < ActiveRecord::Base
    
    has_many :space_characteristics
    has_many :spaces, through: :space_characteristics
  
end
