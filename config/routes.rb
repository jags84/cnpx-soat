Rails.application.routes.draw do
  # API
  namespace :api do
    resources :plates, only: [:show], param: :plate_number
  end
  resources :policies, only: [:index,:show,:new,:create,:destroy]
  resources :policies do
    resources :payments, only: [:new,:create]
  end

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
