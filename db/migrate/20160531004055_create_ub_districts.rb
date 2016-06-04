class CreateUbDistricts < ActiveRecord::Migration
  def change
    create_table :ub_districts do |t|
      t.string :nom_dist
      t.timestamps null: false
    end
  end
end
