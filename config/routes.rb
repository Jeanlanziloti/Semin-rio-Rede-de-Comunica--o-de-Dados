Seminario::Application.routes.draw do
  get "pages/amcharts"

  get "pages/teste"

  get "pages/chart"

  resources :protocols

  resources :layers
  root :to => 'home#index'
end
