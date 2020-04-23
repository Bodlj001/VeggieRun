Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users
  resources :restaurants do
    resources :meals, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

