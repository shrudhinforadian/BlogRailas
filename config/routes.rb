
Rails.application.routes.draw do
  resources :useris
  devise_for :users
  get 'welcome/index'

  resources :articles

  root 'welcome#index'

resources :articles do
  resources :comments
end
end
