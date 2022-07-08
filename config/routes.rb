Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  root 'posts#index'

  get 'friendships', to: 'friendships#index'
  patch 'friendships', to: 'friendships#confirm', as: 'confirm'
  delete 'friendships', to: 'friendships#destroy', as: 'notfriend'

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :friendships
  end
  resources :posts, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end

  namespace :api, default: { format: :json } do
    resources :users, only: [:index, :create] do
      resources :posts, only: [:index, :create] do
        resources :comments, only: [:index, :create]
      end
    end

    post '/sign_in', to: 'sessions#create', as: 'user_sign_in'
    post '/sign_up', to: 'registration#new', as: 'sign_up'
    delete '/sign_out', to: 'sessions#destroy', as: 'user_sign_out'
  end

end
