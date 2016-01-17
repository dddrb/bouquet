# This migration comes from bouquet (originally 20160108154107)
class CreateBouquetAssemblies < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_assemblies do |t|
      t.string :name
      t.integer :quantity
      t.references :product, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true

      t.timestamps
    end
  end
end
