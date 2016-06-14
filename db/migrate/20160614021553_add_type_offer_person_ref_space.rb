class AddTypeOfferPersonRefSpace < ActiveRecord::Migration
  def change
    
    # Referencia Tabla Espacios
    add_reference :spaces, :type_offer_person, index: true, foreign_key: true
    
  end
end
