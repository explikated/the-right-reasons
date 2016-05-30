Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  root "static_pages#homepage"
  
  resources :contestants do
    get 'add_points', on: :member
  end

  resources :episode_points, only: [:index, :destroy]

  resources :leagues, only: [:index, :show]

  resources :teams

  resources :users

  resources :charts do
    get :points_per_episode, on: :collection
  end
end
