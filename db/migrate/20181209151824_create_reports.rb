class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.float :total_revenue
      t.float :total_cost
      t.float :total_profit
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
