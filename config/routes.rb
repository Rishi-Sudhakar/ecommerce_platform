Rails.application.routes.draw do
  resources :products, only: [:index]
  resource :cart, only: [:show] do
    post 'add_to_cart', on: :collection
  end
  root 'products#index'
end
