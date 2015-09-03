class CreateManmenmes < ActiveRecord::Migration
  def change
    create_table :manmenmes do |t|
      t.integer :count, default: 0

      t.timestamps null: false
    end
  end
end
