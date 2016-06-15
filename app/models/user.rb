class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile  
  has_many :space  
  
  after_create :set_default_profile  
  
  # Definiendo por defecto que el modelo Usuario cree un nuevo objecto Perfil
  def set_default_profile   

    profile = Profile.new   
    profile.nombres = ''
    profile.user_id = self.id
    profile.save 
    
    # Numero de Celular
    profile_phone = ProfilePhone.new   
    profile_phone.num_telefono  = ''
    profile_phone.phone_type_id = 1 # Celular
    profile_phone.profile_id = profile.id 
    profile_phone.save
    
    # Numero de Telefono
    profile_phone1 = ProfilePhone.new   
    profile_phone1.num_telefono = ''
    profile_phone1.phone_type_id = 2 # Fijo
    profile_phone1.profile_id = profile.id 
    profile_phone1.save
      
  end
  
end
