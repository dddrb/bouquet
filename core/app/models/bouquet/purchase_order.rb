module Bouquet
  class PurchaseOrder < ApplicationRecord
    belongs_to :material
    belongs_to :supplier
    has_one :arrival, dependent: :destroy
  end
end
