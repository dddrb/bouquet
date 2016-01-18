# This migration comes from bouquet (originally 20160108154144)
class CreateBouquetSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_suppliers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
