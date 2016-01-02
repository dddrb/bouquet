require 'rails_helper'

module Bouquet
  RSpec.describe Gate::ProductsController, :type => :controller do
    routes { Bouquet::Gate::Engine.routes }

    describe "GET index" do
      it "returns http success" do
        get :index, format: :json
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET show" do
      it "returns http success" do
        product = FactoryGirl.create(:bouquet_product)
        get :show, id: product, format: :json
        expect(response).to have_http_status(:success)
      end
    end

  end
end
