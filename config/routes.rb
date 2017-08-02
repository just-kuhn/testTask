Rails.application.routes.draw do

  resources :categories
  root "pages#index"

  get ':category_name/:page_name/:page_id', to: 'pages#show'
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
