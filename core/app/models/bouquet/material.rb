# Bouquet::Material.find_by(name: :m1).products
module Bouquet
  class Material < ApplicationRecord
    has_many :assemblies
    has_many :products, through: :assemblies
  end
end
