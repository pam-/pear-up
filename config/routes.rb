Rails.application.routes.draw do

  root 'languages#index'

  devise_for :users
  
  devise_scope :user do
    get '/sign_up', to: 'devise/registrations#new'
    get 'sign_in', to: 'devise/sessions#new'
    delete 'sign_out', to: 'devise/sessions#destroy'
  end 

  resources :languages #, only: [:index, :show]
  resources :users, only: [:show]  
  resources :pairing, only: [:create] do 
  	post '/confirm', to: 'pairing#confirm'
  end 

 

end
