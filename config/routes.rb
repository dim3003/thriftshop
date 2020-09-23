Rails.application.routes.draw do

  root to: 'home#index'

  get 'home', to: 'home#index'

  get '/:id/show', to: 'item#show', as: 'item'

  resources :item, only: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
