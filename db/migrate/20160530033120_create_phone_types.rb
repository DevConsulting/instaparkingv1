class CreatePhoneTypes < ActiveRecord::Migration
  
  def up 
    drop_table :phone_types
  end
  
  def change
    create_table :phone_types do |t|
      t.string :nombre_tip_telefono
      t.timestamps null: false
    end
  end
  
  # Eliminando la Tabla
  def down
    #drop_table :phone_types
  end
  
end
