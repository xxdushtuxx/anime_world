Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
    root 'home#index'
    get 'about', to: 'home#about'
  end
  
  # root "articles#index"
end
