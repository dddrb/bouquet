# Bouquet::Shipment.last.delivering
module Bouquet
  class Shipment < ApplicationRecord
    belongs_to :sales_order
    has_many :deliveries
    has_many :locations, through: :deliveries

    def delivering
      ActiveRecord::Base.transaction do
        location = Bouquet::Location.first

        deliverie = deliveries.new(quantity: quantity, location_id: location.id)
        deliverie.date = Time.current
        deliverie.save

        sales_order.product.assemblies.each do |assembly|
          assembly_quantity = assembly.quantity

          storages = Bouquet::Storage.with_material(assembly.material_id)
          storages.each do |storage|
            break if assembly_quantity <= 0
            if storage.quantity > 0
              retrieval_quantity = if storage.quantity - assembly_quantity < 0
                storage.quantity
              else
                assembly_quantity
              end

              retrieval = deliverie.retrievals.create(quantity: retrieval_quantity, storage_id: storage.id)
              retrieval.date = Time.current
              retrieval.save

              assembly_quantity = assembly_quantity - retrieval_quantity
            end
          end

          raise ActiveRecord::Rollback if assembly_quantity > 0
        end
      end
    end
  end
end
