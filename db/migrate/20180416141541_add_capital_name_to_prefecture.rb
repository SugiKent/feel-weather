class AddCapitalNameToPrefecture < ActiveRecord::Migration[5.1]
  def change
    add_column :prefectures, :capital_name, :string
  end
end
