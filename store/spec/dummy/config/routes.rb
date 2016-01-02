Rails.application.routes.draw do
  mount Bouquet::Store::Engine => "/bouquet-store"
end
