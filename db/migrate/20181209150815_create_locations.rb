class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :region
      t.string :country

      t.timestamps
    end
    add_index :locations, [:region, :country]
  end
end
