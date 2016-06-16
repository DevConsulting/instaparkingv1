class CreateReservationCars < ActiveRecord::Migration
  def change
    create_table :reservation_cars do |t|

      t.timestamps null: false
    end
  end
end
