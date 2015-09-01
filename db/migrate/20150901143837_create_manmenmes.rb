class CreateManmenmes < ActiveRecord::Migration
  def change
    create_table :manmenmes do |t|

      t.timestamps null: false
    end
  end
end
