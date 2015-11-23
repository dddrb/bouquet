module Bouquet
  module Gate
    class ProductsController < Bouquet::Gate::ApplicationController
      def index
        @products = Bouquet::Product.all
      end

      def show
        @product = Bouquet::Product.find(params[:id])
      end
    end
  end
end
