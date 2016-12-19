Rails.application.routes.draw do

  namespace :chef do
    resource :dashboard, only: [:show]
  end

  root 'users#index'
  resources :users

  get '/auth/:provider/callback', to: 'session#create'
end
