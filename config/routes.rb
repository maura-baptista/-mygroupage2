Rails.application.routes.draw do

  resources :flats
 # get 'groupages/form_opening'
  get 'containers/form_opening'
  get 'pages/login'
  
  # post 'calculator' => 'containers#calculator'
 
 #  resources :groupages, only: [:index, :show, :new, :create]
	# resources :containers, only: [:new, :create]
	 match "calculator" => "containers#calculator", :via => [:post, :get]
  devise_for :users
  root to: 'pages#home'

  resources :containers  do
    resources :groupages, only: [ :index, :show, :new, :create ]
  end
  
  resources :user_steps
  # root to: "savings#new"
  # match "calculator" => "pages#calculator", :via => [:post, :get]
  # post 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
