Rails.application.routes.draw do
  resources :posts
  # get requests for the /pages path should go to the PagesController's index method
  get '/pages', to: 'pages#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
