Seminario::Application.routes.draw do
  resources :layers
  root :to => 'home#index'
end
