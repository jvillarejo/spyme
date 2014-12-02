Rails.application.routes.draw do
  mount Spyme::Engine => "/spyme"
end

Spyme::Engine.routes.draw do
  resources :locations, only: [:create]
end
