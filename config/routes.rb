Rails.application.routes.draw do

    resources :categories do
    resources :pages
 end
  root "pages#index"

  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
