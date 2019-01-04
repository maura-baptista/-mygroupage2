Rails.application.routes.draw do

	resources :savings, only: [ :create]
	 match "calculator" => "savings#calculator", :via => [:post, :get]
  devise_for :users
  # root to: 'pages#home'
  root to: "savings#new"
  # match "calculator" => "pages#calculator", :via => [:post, :get]
  # post 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
