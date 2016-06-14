class AddSpaceTypeRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Tabla Space
    add_reference :spaces, :space_type, index: true, foreign_key: true
    
  end
end
