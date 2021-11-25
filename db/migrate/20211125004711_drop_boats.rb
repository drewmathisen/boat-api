class DropBoats < ActiveRecord::Migration[6.1]
  def change
    drop_table :boats
  end
end
