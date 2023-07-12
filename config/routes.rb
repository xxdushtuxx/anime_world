Rails.application.routes.draw do
  get 'publishers/index'
  get 'publishers/show'
  get 'characters/index'
  get 'characters/show'
  get 'home/index'
  get 'home/about'

  root 'home#index'
  get 'about', to: 'home#about'

  resources :characters, only: [:index, :show]
  resources :publishers, only: [:index, :show]
end
