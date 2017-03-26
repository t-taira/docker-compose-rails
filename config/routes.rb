Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dogs#index'
end
