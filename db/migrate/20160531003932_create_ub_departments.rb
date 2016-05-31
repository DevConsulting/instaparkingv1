class CreateUbDepartments < ActiveRecord::Migration
  def change
    create_table :ub_departments do |t|
      t.string :nom_dpto
      t.timestamps null: false
    end
  end
end
