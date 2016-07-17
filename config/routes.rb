Rails.application.routes.draw do
devise_for :users
resources :users
resources :stories do
  	member do
  		put "like", to: "stories#upvote"
  	end
  end

  root "stories#index"
end