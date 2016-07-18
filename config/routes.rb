Rails.application.routes.draw do
  get 'profile/show'

  get 'search/index'

  get 'search' => 'search#search', as: 'search'
  get 'search_results' => 'search#search_results', as: 'search_results'

devise_for :users, controllers: { registrations: "registrations" }
resources :users
resources :stories do
  	member do
  		put "like", to: "stories#upvote"
  	end
  end

  root "stories#index"
end