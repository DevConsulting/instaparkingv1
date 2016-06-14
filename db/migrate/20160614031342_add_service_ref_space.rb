class AddServiceRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Tabla Space
    add_reference :spaces, :service, index: true, foreign_key: true
   
  end
end
