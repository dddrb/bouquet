Rails.application.routes.draw do
  mount Bouquet::Gate::Engine => "/api"
  mount Bouquet::Store::Engine => "/store"
end
