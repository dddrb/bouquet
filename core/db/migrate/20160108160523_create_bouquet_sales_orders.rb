class CreateBouquetSalesOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_sales_orders do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :product, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps
    end
  end
end
