Rails.application.routes.draw do
  root "static_pages#homepage"
  
  resources :contestants do
    get 'add_points', on: :member
  end

  resources :episode_points

  resources :leagues, only: [:index]

  resources :teams

  resources :users
end
