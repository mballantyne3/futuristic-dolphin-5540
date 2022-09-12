class DropMechanicsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :mechanics_tables
  end
end
