Rails.application.routes.draw do

  resources :categories 

  resources :pages, path: ''
  root "pages#index"

  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
