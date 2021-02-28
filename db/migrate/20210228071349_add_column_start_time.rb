class AddColumnStartTime < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :start_time, :datetime
  end
end
