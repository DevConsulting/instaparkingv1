class AddSpaceUbicationRefSpace < ActiveRecord::Migration
  
  def change
    
    # Referencia Tabla Space
    add_reference :space_ubications, :space, index: true, foreign_key: true
    
  end
  
end
