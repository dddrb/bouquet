Bouquet::Gate::Engine.routes.draw do
  scope module: :gate, defaults: {format: :json} do
    resources :products
    resources :purchase_orders
  end
end
