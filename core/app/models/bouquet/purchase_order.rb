# purchase_order = Bouquet::PurchaseOrder.new(quantity: 1, material_id: 1, supplier_id: 1)
# purchase_order.save
# purchase_order.arrival.stocks.first.storages.first
module Bouquet
  class PurchaseOrder < ApplicationRecord
    belongs_to :material
    belongs_to :supplier
    has_one :arrival, dependent: :destroy

    after_create do
      location = Bouquet::Location.first

      arrival = build_arrival(quantity: quantity)
      arrival.save

      stock = arrival.stocks.new(quantity: quantity, location_id: location.id)
      stock.save

      storage = stock.storages.new(quantity: quantity)
      storage.save
    end
  end
end
