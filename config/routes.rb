Rails.application.routes.draw do
  resources :tweets, only: [:index, :new, :create]
  root to: 'tweets#index'
  post 'tweets/create' => 'tweets#create'

  
end
