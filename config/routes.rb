Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  root "posts#index"
  resources :posts
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
