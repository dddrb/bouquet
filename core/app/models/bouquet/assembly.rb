# Bouquet::Product.find_by(name: :p1).assemblies.create(material_id: Bouquet::Material.find_by(name: :m1).id)
# Bouquet::Product.find_by(name: :p1).assemblies.create(material_id: Bouquet::Material.find_by(name: :m2).id)
module Bouquet
  class Assembly < ApplicationRecord
    belongs_to :product
    belongs_to :material
  end
end
