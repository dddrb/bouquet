class CreateBouquetStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_storages do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :storable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
