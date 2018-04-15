class CreatePrefectures < ActiveRecord::Migration[5.1]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :eng_name

      t.timestamps
    end
  end
end
