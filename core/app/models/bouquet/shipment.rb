# Bouquet::Customer.find_by(name: :foo).sales_orders.last.shipment = Bouquet::Shipment.create
module Bouquet
  class Shipment < ApplicationRecord
    belongs_to :sales_order
    has_many :deliveries
    has_many :locations, through: :deliveries
  end
end
