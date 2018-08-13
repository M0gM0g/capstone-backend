# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employees, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/employees' => 'employees#index'
  get '/employees/:id' => 'employees#show'
  post '/employees' => 'employees#create'
  patch '/employees/:id' => 'employees#update'
  delete '/employees/:id' => 'employees#destroy'
end
