class CreateSpaceCharacteristics < ActiveRecord::Migration
  def change
    create_table :space_characteristics do |t|

      t.timestamps null: false
    end
  end
end
