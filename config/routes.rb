Rails.application.routes.draw do

  root to: 'home#index'

  get 'home', to: 'home#index'

  get 'attribute', to: 'home#attribute'

  get '/items/add', to: 'items#add', as: 'add'

  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
