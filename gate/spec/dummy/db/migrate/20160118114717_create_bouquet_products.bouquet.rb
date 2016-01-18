# This migration comes from bouquet (originally 20160102155121)
class CreateBouquetProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_products do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
