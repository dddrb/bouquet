# sales_order = Bouquet::SalesOrder.new(quantity: 1, customer_id: 1, product_id: 1)
# sales_order.save
# Bouquet::SalesOrder.last.shipping
module Bouquet
  class SalesOrder < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    has_one :shipment, dependent: :destroy

    def shipping
      shipment = build_shipment
      shipment.date = Time.current
      shipment.save
    end
  end
end
