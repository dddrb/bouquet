# Bouquet::Material.create(name: :m1, expiration_days: 3, order_lead_time: 6, order_quantity: 9)
# Bouquet::Material.create(name: :m2, expiration_days: 2, order_lead_time: 4, order_quantity: 6)
module Bouquet
  class Material < ApplicationRecord
    has_many :assemblies
    has_many :products, through: :assemblies
  end
end
