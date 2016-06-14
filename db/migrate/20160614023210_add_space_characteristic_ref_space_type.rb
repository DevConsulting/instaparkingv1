class AddSpaceCharacteristicRefSpaceType < ActiveRecord::Migration
  def change
    
    # Referencia Tabla Tipo de Espacios
    add_reference :space_characteristics, :space_type, index: true, foreign_key: true
    
  end
end
