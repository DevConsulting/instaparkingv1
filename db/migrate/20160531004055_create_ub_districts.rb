class CreateUbDistricts < ActiveRecord::Migration
  def change
    create_table :ub_districts do |t|

      t.timestamps null: false
    end
  end
end
