require 'rails_helper'

module Bouquet
  RSpec.describe Gate::ProductsController, type: :controller do

    describe "GET #index" do
      xit "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

  end
end
