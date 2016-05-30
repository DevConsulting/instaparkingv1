class ProfilePhone < ActiveRecord::Base
    belongs_to :profile 
    belongs_to :phone_types
    #has_many :phone_types
    #validates_presence_of :num_telefono
end
