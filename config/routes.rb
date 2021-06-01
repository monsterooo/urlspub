require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  get 'home/index'
  post 'home/fetch_more'
  root 'home#index'
  mount Sidekiq::Web => '/sidekiq'
  # resources :articles
  # resources :targets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
