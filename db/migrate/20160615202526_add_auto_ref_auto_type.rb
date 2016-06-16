class AddAutoRefAutoType < ActiveRecord::Migration
  def change
    
    # Referencia Espacio Características
    add_reference :cars, :car_type, index: true, foreign_key: true
    
  end
end
