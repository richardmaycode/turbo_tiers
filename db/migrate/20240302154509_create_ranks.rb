class CreateRanks < ActiveRecord::Migration[7.1]
  def change
    create_table :ranks do |t|
      t.string :name, null: false, limit: 60, default: "Untitled Rank"
      t.integer :index, null: false, default: -1
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
