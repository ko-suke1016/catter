class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :sex, null: false
      t.string :cat_img, null: false

      t.timestamps
    end
  end
end
