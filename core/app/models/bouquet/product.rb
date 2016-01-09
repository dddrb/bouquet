# Bouquet::Product.create(name: :p1)
# Bouquet::Product.find_by(name: :p1).materials
module Bouquet
  class Product < ApplicationRecord
    has_many :assemblies
    has_many :materials, through: :assemblies
    has_many :sales_orders
    has_many :customers, through: :sales_orders
  end
end
