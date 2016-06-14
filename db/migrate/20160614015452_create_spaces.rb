class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :nom_space
      t.string :descripcion
      t.string :observacion
      t.timestamps null: false
    end
  end
end
