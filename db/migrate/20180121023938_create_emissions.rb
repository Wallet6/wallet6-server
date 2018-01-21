class CreateEmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :emissions do |t|
      t.integer :distance
      t.integer :emission
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
