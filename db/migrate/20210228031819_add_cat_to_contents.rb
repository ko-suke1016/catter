class AddCatToContents < ActiveRecord::Migration[5.2]
  def change
    add_reference :contents, :cat, foreign_key: true
  end
end
