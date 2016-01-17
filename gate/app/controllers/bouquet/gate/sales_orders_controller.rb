require_dependency "bouquet/gate/application_controller"

module Bouquet
  class Gate::SalesOrdersController < ApplicationController
    before_action :set_sales_order, only: [:show, :update, :destroy]

    # GET /sales_orders
    def index
      @sales_orders = Bouquet::SalesOrder.all

      render json: @sales_orders
    end

    # GET /sales_orders/1
    def show
      render json: @sales_order
    end

    # POST /sales_orders
    def create
      @sales_order = Bouquet::SalesOrder.new(sales_order_params)

      if @sales_order.save
        render json: @sales_order, status: :created #, location: @sales_order
      else
        render json: @sales_order.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /sales_orders/1
    def update
      if @sales_order.update(sales_order_params)
        render json: @sales_order
      else
        render json: @sales_order.errors, status: :unprocessable_entity
      end
    end

    # DELETE /sales_orders/1
    def destroy
      @sales_order.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sales_order
        @sales_order = Bouquet::SalesOrder.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def sales_order_params
        params.require(:sales_order).permit(:quantity, :shipment_date, :product_id, :customer_id)
      end
  end
end
