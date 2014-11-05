Rails.application.routes.draw do

  root 'languages#index'

  devise_for :users, controllers: { registrations: 'registrations' }
  
  devise_scope :user do
    get '/sign_up', to: 'devise/registrations#new'
    get 'sign_in', to: 'devise/sessions#new'
    delete 'sign_out', to: 'devise/sessions#destroy'
  end 

  resources :languages
  resources :users, only: [:show]  do
  	resources :messages
  end 
  resources :pairing, only: [:create] do 
  	post '/confirm', to: 'pairing#confirm'
  end 
  resources :users_languages, only: [:create, :destroy]


end
