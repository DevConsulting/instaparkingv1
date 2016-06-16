class CreateSpaceUbications < ActiveRecord::Migration
  def change
    create_table :space_ubications do |t|
      t.string :direccion
      t.string :lat
      t.string :long
      t.timestamps null: false
    end
  end
end
