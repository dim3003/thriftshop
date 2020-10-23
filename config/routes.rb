Rails.application.routes.draw do

  get 'cart/index'

  root to: 'home#index'

  get 'home', to: 'home#index'

  get 'attribute', to: 'home#attribute'

  get '/items/add', to: 'items#add', as: 'add'

  get '/items/remove', to: 'items#remove', as: 'remove'

  get '/cart/address', to: 'cart#address', as: 'address'

  get '/cart/addressAJAX', to: 'cart#addressAJAX', as: 'addressAJAX'

  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
