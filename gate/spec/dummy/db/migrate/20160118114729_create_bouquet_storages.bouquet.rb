# This migration comes from bouquet (originally 20160111072002)
class CreateBouquetStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_storages do |t|
      t.string :state
      t.date :date
      t.integer :initial_quantity
      t.references :stock, index: true, foreign_key: true

      t.timestamps
    end
  end
end
