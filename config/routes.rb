Rails.application.routes.draw do
  resources :records
  resources :askings
  get 'static_pages/home'
  get 'static_pages/results'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/random', to: 'askings#random'
  get '/results', to: 'askings#results'
  get '/reset', to: 'askings#reset'
  
  root 'static_pages#home'
end
