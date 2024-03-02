class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :name, null: false, limit: 30, default: "New Tier List"
      t.integer :visibility, null: false, default: 0

      t.timestamps
    end
  end
end
