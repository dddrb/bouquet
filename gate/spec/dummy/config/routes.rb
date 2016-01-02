Rails.application.routes.draw do
  mount Bouquet::Gate::Engine => "/bouquet-gate"
end
