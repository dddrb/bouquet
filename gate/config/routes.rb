Bouquet::Gate::Engine.routes.draw do
  scope module: :gate, defaults: {format: :json} do
    resources :products, only: [:index, :show]
  end
end
