class CreateMechanicsRides < ActiveRecord::Migration[5.2]
  def change
    create_table :mechanics_rides do |t|
      t.timestamps
      t.references "ride"
      t.references "mechanic"
    end
  end
end
