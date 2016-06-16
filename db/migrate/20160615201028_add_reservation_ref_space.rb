class AddReservationRefSpace < ActiveRecord::Migration
  def change
    # Referencia Espacio Características
    add_reference :reservations, :space, index: true, foreign_key: true
  end
end
