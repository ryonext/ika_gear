class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :part
      t.references :bland, index: true
      t.references :gear_power, index: true
      t.integer :rarity
      t.integer :price
      t.boolean :salable

      t.timestamps null: false
    end
  end
end
