class AddIndexGearName < ActiveRecord::Migration
  def change
    add_index :gears, :name, unique: true
  end
end
