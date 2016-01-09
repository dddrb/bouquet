class CreateBouquetMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_materials do |t|
      t.string :name
      t.integer :expiration_days
      t.integer :order_lead_time
      t.integer :order_quantity

      t.timestamps
    end
  end
end
