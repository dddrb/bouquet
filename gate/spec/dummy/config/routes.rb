Rails.application.routes.draw do

  mount Bouquet::Gate::Engine => "/bouquet_gate"
end
