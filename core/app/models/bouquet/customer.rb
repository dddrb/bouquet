module Bouquet
  class Customer < ApplicationRecord
    has_many :sales_orders
    has_many :products, through: :sales_orders
  end
end
