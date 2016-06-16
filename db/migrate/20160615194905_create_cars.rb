class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string  :modelo 
      t.string  :placa
      t.timestamps null: false
    end
  end
end
