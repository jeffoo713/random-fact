Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :facts, param: :id
      resources :comments, only: [:create, :destroy]
    end
  end

  # for react router, prevent rails routes to interfere api 
  get '*path', to: 'pages#index', via: :all
end
