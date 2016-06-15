class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :f_inicio
      t.string :f_fin
      t.string :h_inicio
      t.string :h_fin
      t.timestamps null: false
    end
  end
end
