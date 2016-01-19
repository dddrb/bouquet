# Bouquet::Shipment.last.delivering
module Bouquet
  class Shipment < ApplicationRecord
    belongs_to :sales_order
    has_many :deliveries
    has_many :locations, through: :deliveries

    def delivering
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
            retrieval_quantity = if storage.quantity - assembly_quantity >= 0
              assembly_quantity
            else
              storage.quantity
            end

            retrieval = deliverie.retrievals.create(quantity: retrieval_quantity, storage_id: storage.id)
            retrieval.date = Time.current
            retrieval.save

            assembly_quantity = assembly_quantity - retrieval_quantity
          end
        end

        if assembly_quantity > 0
          puts "Delivering Error: Shortage #{assembly.material.name} = #{assembly_quantity}"
          raise ActiveRecord::Rollback
        end
      end
    end
  end
end
