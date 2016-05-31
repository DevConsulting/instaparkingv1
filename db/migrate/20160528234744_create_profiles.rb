class CreateProfiles < ActiveRecord::Migration
  def up
    drop_table :profiles
  end
  # Cargando Tabla Perfil
  def change
    create_table :profiles do |t|

      # Campos Adicionales
      t.string :nombres     # Nombres Completos  
      t.string :ap_materno  # Apellido Paterno
      t.string :ap_paterno  # Apellido Materno
      t.string :descripcion # Descripción del Perfil
      t.string :direccion   # Dirección
      t.string :avatar      # Foto
      
      t.timestamps null: false
      
    end
  end
  
  # Eliminando la Tabla
  def down
    #drop_table :profiles
  end
end
