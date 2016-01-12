# This migration comes from bouquet (originally 20160108155753)
class CreateBouquetStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_stocks do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :arrival, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps
    end
  end
end
