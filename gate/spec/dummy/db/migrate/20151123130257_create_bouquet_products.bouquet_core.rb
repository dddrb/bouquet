# This migration comes from bouquet_core (originally 20151122145140)
class CreateBouquetProducts < ActiveRecord::Migration
  def change
    create_table :bouquet_products do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
