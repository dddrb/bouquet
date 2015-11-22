class CreateBouquetProducts < ActiveRecord::Migration
  def change
    create_table :bouquet_products do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
