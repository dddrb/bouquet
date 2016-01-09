module Bouquet
  class Supplier < ApplicationRecord
    has_many :purchase_orders
    has_many :materials, through: :purchase_orders
  end
end
