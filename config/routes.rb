Rails.application.routes.draw do
  get 'award_winners/index'
  get 'award_winners/show'
  get 'awards/index'
  get 'awards/show'
  get 'publishers/index'
  get 'publishers/show'
  get 'characters/index'
  get 'characters/show'
  get 'home/index'
  get 'home/about'
  Rails.application.routes.draw do
  get 'award_winners/index'
  get 'award_winners/show'
  get 'awards/index'
  get 'awards/show'
  get 'publishers/index'
  get 'publishers/show'
  get 'characters/index'
  get 'characters/show'
  get 'home/index'
  get 'home/about'
    root 'home#index'
    get 'about', to: 'home#about'
  end
  
  # root "articles#index"
end
