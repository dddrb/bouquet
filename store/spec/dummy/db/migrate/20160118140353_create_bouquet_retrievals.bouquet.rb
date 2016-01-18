# This migration comes from bouquet (originally 20160111072201)
class CreateBouquetRetrievals < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_retrievals do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :storage, index: true, foreign_key: true
      t.references :delivery, index: true, foreign_key: true

      t.timestamps
    end
  end
end
