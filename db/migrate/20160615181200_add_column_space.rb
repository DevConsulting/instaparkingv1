class AddColumnSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :created_by, :integer
  end
end
