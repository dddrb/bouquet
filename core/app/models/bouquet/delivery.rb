module Bouquet
  class Delivery < ApplicationRecord
    belongs_to :shipment
    belongs_to :location
    has_many :retrievals
  end
end
