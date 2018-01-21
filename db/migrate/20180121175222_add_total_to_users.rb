class AddTotalToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :total_distance, :integer, default: 0
    add_column :users, :emission_total, :integer, default: 0
  end
end
