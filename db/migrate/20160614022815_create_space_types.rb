class CreateSpaceTypes < ActiveRecord::Migration
  def change
    create_table :space_types do |t|
      t.string :nom_space_type
      t.timestamps null: false
    end
  end
end
