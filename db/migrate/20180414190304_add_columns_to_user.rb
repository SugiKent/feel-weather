class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :function_type, :integer
    add_column :users, :modify_name, :text
    add_column :users, :prefecture_id, :integer
  end
end
