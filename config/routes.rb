Rails.application.routes.draw do
  devise_for :users

  resources :posts
  resources :comments
  root "pages#home"
  get "/search" => "pages#search", :as => "search_page"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
