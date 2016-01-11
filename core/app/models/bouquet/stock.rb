module Bouquet
  class Stock < ApplicationRecord
    belongs_to :arrival
    belongs_to :location
    has_many :storages
  end
end
