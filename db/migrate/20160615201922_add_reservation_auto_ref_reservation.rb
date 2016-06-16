class AddReservationAutoRefReservation < ActiveRecord::Migration
  def change
    
    # Referencia Reservacion
    add_reference :reservation_cars, :reservation, index: true, foreign_key: true
    
    # Referencia Autos
    add_reference :reservation_cars, :car, index: true, foreign_key: true
    
  end
end
