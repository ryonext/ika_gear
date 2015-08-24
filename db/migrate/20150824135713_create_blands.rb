class CreateBlands < ActiveRecord::Migration
  def change
    create_table :blands do |t|
      t.string :name
      t.integer :sub_gear_type

      t.timestamps null: false
    end
  end
end
