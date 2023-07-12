Rails.application.routes.draw do
  get 'comic_books/index'
  get 'comic_books/show'
  root 'home#index'
  
  get 'home/index'
  get 'home/about'
  
  get 'characters/search', to: 'characters#search', as: 'character_search'
  get 'publishers/:id/characters', to: 'publishers#characters', as: 'publisher_characters'
  
  resources :characters, only: [:index, :show]
  resources :publishers, only: [:index, :show]
end
