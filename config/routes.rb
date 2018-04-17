Rails.application.routes.draw do

  
  get 'favorite_posts/index'

  get '/homes/index', to: 'homes#index'
  root to: 'homes#index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
