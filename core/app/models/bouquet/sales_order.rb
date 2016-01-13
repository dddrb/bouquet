# sales_order = Bouquet::SalesOrder.new(quantity: 1, product_id: 1, customer_id: 1)
# sales_order.save
# sales_order.shipment.deliveries.first.retrievals.first
module Bouquet
  class SalesOrder < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    has_one :shipment, dependent: :destroy

    after_create do
      location = Bouquet::Location.first
      storage = Bouquet::Storage.first

      shipment = build_shipment(quantity: quantity)
      shipment.save

      deliverie = shipment.deliveries.new(quantity: quantity, location_id: location.id)
      deliverie.save

      retrieval = deliverie.retrievals.new(quantity: quantity, storage_id: storage.id)
      retrieval.save
    end
  end
end
