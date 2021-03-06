Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
