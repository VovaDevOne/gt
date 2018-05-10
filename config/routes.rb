Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	root 'posts#index'
	resources :posts
	resources :pictures, only: [:create, :destroy]
	resources :tags, only: [:show]
	resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
