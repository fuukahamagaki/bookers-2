Rails.application.routes.draw do
  devise_for :users
  root to:"homes#top"
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :update]
  get "home/about" => "homes#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
