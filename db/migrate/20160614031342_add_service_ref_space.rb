class AddServiceRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Tabla space_characteristics
    add_reference :space_characteristics, :service, index: true, foreign_key: true
   
  end
end
