class AddSpaceCharacteristicRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Espacio Características
    add_reference :space_characteristics, :space, index: true, foreign_key: true
    
  end
end
