Rails.application.routes.draw do
  mount Bouquet::Gate::Engine => "/api"
end
