class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title, null: false, limit: 30
      t.text :body, null: false, limit: 200

      t.timestamps
    end
  end
end
