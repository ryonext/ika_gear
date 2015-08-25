class CreateGearPowers < ActiveRecord::Migration
  def change
    create_table :gear_powers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
