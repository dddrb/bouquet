# Bouquet::Location.create(name: :l1)
# Bouquet::Location.find_by(name: :l1)
module Bouquet
  class Location < ApplicationRecord
    has_many :deliveries
    has_many :shipments, through: :deliveries
    has_many :stocks
    has_many :arrivals, through: :stocks
  end
end
