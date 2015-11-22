Rails.application.routes.draw do

  mount Bouquet::Core::Engine => "/bouquet_core"
end
