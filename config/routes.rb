Rails.application.routes.draw do

  resources :policies
  resources :policies do
    resources :payments, only: [:index,:new,:show,:create]
  end

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
