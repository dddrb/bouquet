Rails.application.routes.draw do
  mount Bouquet::Store::Engine => "/store"
end
