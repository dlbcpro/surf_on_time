Rails.application.routes.draw do
  get 'surf_schools/index'
  get 'surf_schools/show'
  get 'surf_schools/update'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spots, only: [:index, :show]

  resources :surf_schools, only: [:index, :show]
end
