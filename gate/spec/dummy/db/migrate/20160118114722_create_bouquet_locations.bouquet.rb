# This migration comes from bouquet (originally 20160108154217)
class CreateBouquetLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_locations do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
