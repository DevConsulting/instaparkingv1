class AddProfileRef < ActiveRecord::Migration
  def change
    
      # Referencia Tabla Perfil
      add_reference :profile_phones, :profile, index: true, foreign_key: true
      
      # Referencia Tabla Tipo de Teléfonos
      add_reference :profile_phones, :phone_type, index: true, foreign_key: true
      
  end
end
