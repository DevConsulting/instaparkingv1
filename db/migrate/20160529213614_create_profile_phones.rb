class CreateProfilePhones < ActiveRecord::Migration
  
  def up 
    drop_table :profile_phones
  end
  
  def change
    create_table :profile_phones do |t|
      
      # Campos
      t.string :num_telefono     
      t.timestamps null: false
    end
  end
  
  # Eliminando la Tabla
  def down
    #drop_table :profile_phones
  end
  
end
