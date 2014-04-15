TwitterClone::Application.routes.draw do
  root to: 'users#index'
  devise_for :users
  resources :qwits
end
