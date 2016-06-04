class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.text :correo
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
