class CreatePics < ActiveRecord::Migration[6.1]
  def change
    create_table :pics, id: false do |t|
      t.integer :id, primary_key: true
      t.string :author
      t.string :url
      t.integer :likes, default: 0, null: false

      t.timestamps
    end
  end
end
