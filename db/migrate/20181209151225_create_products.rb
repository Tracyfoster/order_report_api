class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :item_type
      t.float :unit_cost
      t.float :unit_price

      t.timestamps
    end
  end
end
