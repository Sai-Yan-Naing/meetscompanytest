Rails.application.routes.draw do
  devise_for :users
  # root 'admin#index'
  resources :admin
  # delete '/sign_out',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :company
end
