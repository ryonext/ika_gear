class ChangeCollate < ActiveRecord::Migration
  def change
    @connection = ActiveRecord::Base.connection
    @connection.execute('ALTER TABLE gears ALTER COLUMN name TYPE VARCHAR COLLATE "C";')
  end
end
