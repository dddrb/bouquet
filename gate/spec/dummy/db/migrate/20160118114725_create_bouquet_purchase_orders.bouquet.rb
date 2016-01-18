# This migration comes from bouquet (originally 20160108155711)
class CreateBouquetPurchaseOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_purchase_orders do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.date :arrival_date
      t.references :material, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true

      t.timestamps
    end
  end
end
