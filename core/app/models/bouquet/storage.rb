# Bouquet::Storage.all
# Bouquet::Storage.with_material(1)
# Bouquet::Storage.last.quantity
module Bouquet
  class Storage < ApplicationRecord
    belongs_to :stock
    has_many :retrievals

    scope :with_material, ->(id) {
      joins({stock: {arrival: :purchase_order}})
        .where(bouquet_purchase_orders: {material_id: id})
    }

    def retrieval_quantity
      retrievals.reduce(0) {|sum, retrieval| sum + retrieval.quantity}
    end

    def quantity
      initial_quantity - retrieval_quantity
    end

    def material_id
      stock.arrival.purchase_order.material_id
    end

    def material_name
      stock.arrival.purchase_order.material.name
    end
  end
end
