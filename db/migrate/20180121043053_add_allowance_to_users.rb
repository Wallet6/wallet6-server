class AddAllowanceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :emission_allowance, :integer
    add_column :users, :emission_usage, :integer
  end
end
