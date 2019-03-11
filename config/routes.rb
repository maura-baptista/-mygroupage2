Rails.application.routes.draw do

 
  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :flats
 # get 'groupages/form_opening'
  get 'pages/partner_form_confirmation'
  get 'containers/form_opening'
  get 'pages/login'
  get 'pages/hire_mover'
  get 'pages/list_confirmation'
  get 'pages/search_container'
  get 'groupages/search_container'
  get 'pages/alert_confirmation'
   get 'terms_and_conditions', to: 'pages#terms_and_conditions', as: 'terms_and_conditions'
  get 'privacy_policy',       to: 'pages#privacy_policy', as: 'privacy_policy'
  get 'moving_guides',       to: 'pages#moving_guides', as: 'moving_guides'
   get 'share_my_container',       to: 'pages#share_my_container', as: 'share_my_container'
  
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
  resources :movers, only: [:index, :new, :create]
   resources :estimates
  resources :user_steps
  resources :lists, only: [ :new, :create, :edit, :update ]
  # root to: "savings#new"
  # match "calculator" => "pages#calculator", :via => [:post, :get]
  # post 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
