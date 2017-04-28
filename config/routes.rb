Rails.application.routes.draw do
  resources :policies
  resources :policies do
    resources :payments, only: [:index,:new,:show,:create]
  end
  resources :dashboard, only: [:index]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
