class CreateUbProvinces < ActiveRecord::Migration
  def change
    create_table :ub_provinces do |t|
      t.string :nom_prov
      t.timestamps null: false
    end
  end
end
