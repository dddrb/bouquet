Bouquet::Gate::Engine.routes.draw do

  namespace :gate, defaults: { format: 'json' } do
    resources :products, only: [:index, :show]
  end

end
