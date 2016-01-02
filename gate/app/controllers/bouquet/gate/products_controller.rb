require_dependency "bouquet/gate/application_controller"

module Bouquet
  class Gate::ProductsController < ApplicationController
    before_action :set_product, only: [:show]

    # GET /products
    def index
      @products = Bouquet::Product.all

      render json: @products
    end

    # GET /products/1
    def show
      render json: @product
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Bouquet::Product.find(params[:id])
      end
  end
end
