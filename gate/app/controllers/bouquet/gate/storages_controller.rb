require_dependency "bouquet/gate/application_controller"

module Bouquet
  class Gate::StoragesController < ApplicationController

    # GET /storages
    def index
      storages = Bouquet::Storage.all
      @storages = storages.map do |storage|
        {
          state: storage.state,
          date: storage.date,
          quantity: storage.quantity,
          material_id: storage.material_id,
          material_name: storage.material_name
        }
      end

      render json: @storages
    end
  end
end
