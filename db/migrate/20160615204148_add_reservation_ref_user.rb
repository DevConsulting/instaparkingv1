class AddReservationRefUser < ActiveRecord::Migration
  def change
    
    # Referencia Espacio Características
    add_reference :reservations, :user, index: true, foreign_key: true
    
  end
end
