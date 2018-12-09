class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.string :order_priority
      t.string :sales_channel
      t.integer :units_sold
      t.date :order_date
      t.date :ship_date
      t.references :location, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
