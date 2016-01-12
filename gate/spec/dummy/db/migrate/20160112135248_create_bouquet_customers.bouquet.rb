# This migration comes from bouquet (originally 20160108154116)
class CreateBouquetCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :bouquet_customers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
