Rails.application.routes.draw do
  get 'publishers/index', to: "publishers#index"
  get 'publishers/show', to: "publishers#show"
  get 'characters/index', to: "characters#index"
  get 'characters/show', to: "characters#show"
  get 'home/index', to: "home#index"
  get 'home/about', to: "home#about"

  root 'home#index'
  get 'about', to: 'home#about'
end
