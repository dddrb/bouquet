require_dependency "bouquet/gate/application_controller"

module Bouquet
  class Gate::PurchaseOrdersController < ApplicationController
    before_action :set_purchase_order, only: [:show, :update, :destroy]

    # GET /purchase_orders
    def index
      @purchase_orders = Bouquet::PurchaseOrder.all

      render json: @purchase_orders
    end

    # GET /purchase_orders/1
    def show
      render json: @purchase_order
    end

    # POST /purchase_orders
    def create
      @purchase_order = Bouquet::PurchaseOrder.new(purchase_order_params)
      @purchase_order.arrival_date = Time.current

      if @purchase_order.save
        render json: @purchase_order, status: :created #, location: @purchase_order
      else
        render json: @purchase_order.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /purchase_orders/1
    def update
      if @purchase_order.update(purchase_order_params)
        render json: @purchase_order
      else
        render json: @purchase_order.errors, status: :unprocessable_entity
      end
    end

    # DELETE /purchase_orders/1
    def destroy
      @purchase_order.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_purchase_order
        @purchase_order = Bouquet::PurchaseOrder.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def purchase_order_params
        params.require(:purchase_order).permit(:quantity, :arrival_date, :material_id, :supplier_id)
      end
  end
end
