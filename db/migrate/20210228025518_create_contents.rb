class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title, null: false
      t.integer :weight
      t.integer :unp
      t.integer :eat
      t.text :body, null: false
      t.string :content_img, null: false

      t.timestamps
    end
  end
end
