Rails.application.routes.draw do
  devise_for :users
  resources :states, only: [:index, :show]
  resources :parks
  resources :parks, only: [:show] do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'states#index'

end
