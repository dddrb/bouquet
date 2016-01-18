# This migration comes from bouquet (originally 20160108155732)
class CreateBouquetArrivals < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_arrivals do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :purchase_order, index: true, foreign_key: true

      t.timestamps
    end
  end
end
