TwitterClone::Application.routes.draw do
  root to: 'users#show'
  devise_for :users
  resources :users
  resources :qwits
end
