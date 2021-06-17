Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/results'

  resources :askings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/random', to: 'askings#random'
  
  root 'static_pages#home'
end
