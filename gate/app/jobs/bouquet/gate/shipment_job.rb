# Bouquet::Gate::ShipmentJob.perform_later
module Bouquet::Gate
  class ShipmentJob < Bouquet::Gate::ApplicationJob
    queue_as :default

    def perform(sales_order)
      sales_order.shipping

      ActiveRecord::Base.transaction do
        sales_order.shipment.delivering
      end
    end
  end
end
