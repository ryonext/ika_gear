class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :part
      t.references :gear_power, index: true
      t.integer :price
      t.boolean :salable
      t.references :bland, index: true

      t.timestamps null: false
    end
  end
end
