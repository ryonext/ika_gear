class CreateBlands < ActiveRecord::Migration
  def change
    create_table :blands do |t|
      t.string :name
      t.integer :high_appearance_gear_power_id
      t.integer :low_appearance_gear_power_id

      t.timestamps null: false
    end
  end
end
