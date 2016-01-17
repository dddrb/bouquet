Bouquet::Gate::Engine.routes.draw do
  scope module: :gate, except: [:new, :edit], defaults: {format: :json} do
    resources :products
    resources :materials
    resources :purchase_orders
    resources :sales_orders
  end
end
