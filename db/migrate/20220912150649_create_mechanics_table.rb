class CreateMechanicsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :mechanics_tables do |t|
      t.string :name
      t.integer :years_experience
      t.timestamps
      t.references "ride", foreign_key: true
    end
  end
end
