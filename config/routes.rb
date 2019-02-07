Rails.application.routes.draw do

 
  
  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :flats
 # get 'groupages/form_opening'
  get 'containers/form_opening'
  get 'pages/login'
  get 'pages/hire_mover'
   get 'pages/list_confirmation'
   get 'pages/search_container'
      get 'groupages/search_container'
      get 'pages/alert_confirmation'
  
  
  # post 'calculator' => 'containers#calculator'
 
 #  resources :groupages, only: [:index, :show, :new, :create]
	# resources :containers, only: [:new, :create]
	 match "calculator" => "containers#calculator", :via => [:post, :get]
  root to: 'pages#home'

  resources :containers  do
    resources :groupages, only: [ :new, :create ]
  end

  resources :groupages, only: [:index, :show]
   resources :alerts, only: [:new, :create]
  
  resources :user_steps
  resources :lists, only: [ :new, :create, :edit, :update ]
  # root to: "savings#new"
  # match "calculator" => "pages#calculator", :via => [:post, :get]
  # post 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
