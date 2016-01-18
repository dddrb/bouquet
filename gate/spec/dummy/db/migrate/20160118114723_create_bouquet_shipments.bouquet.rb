# This migration comes from bouquet (originally 20160108155617)
class CreateBouquetShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_shipments do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :sales_order, index: true, foreign_key: true

      t.timestamps
    end
  end
end
