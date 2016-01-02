require 'rails_helper'

module Bouquet
  RSpec.describe Store::MainController, :type => :controller do
    routes { Bouquet::Store::Engine.routes }

    describe "GET index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

  end
end
