# Bouquet::Location.find_by(name: :l1).deliveries.create(shipment_id: Bouquet::Shipment.last.id)
module Bouquet
  class Delivery < ApplicationRecord
    belongs_to :shipment
    belongs_to :location
    has_one :storage
  end
end
