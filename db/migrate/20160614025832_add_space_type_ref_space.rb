class AddSpaceTypeRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Tabla Space
    add_reference :space_types, :space, index: true, foreign_key: true
    
  end
end
