class CreateBouquetLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_locations do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
