class CreateUbCountries < ActiveRecord::Migration
  def change
    create_table :ub_countries do |t|
      t.string :nom_pais
      t.timestamps null: false
    end
  end
end
