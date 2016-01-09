# Bouquet::Customer.find_by(name: :foo).sales_orders.create(product_id: Bouquet::Product.find_by(name: :p1).id)
module Bouquet
  class SalesOrder < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    has_one :shipment, dependent: :destroy
  end
end
