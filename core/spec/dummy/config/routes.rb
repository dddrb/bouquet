Rails.application.routes.draw do
  mount Bouquet::Core::Engine => "/bouquet-core"
end
