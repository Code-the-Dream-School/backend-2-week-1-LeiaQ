Rails.application.routes.draw do
  resources :posts
  # get requests for the /pages path should go to the PagesController's index method
  get '/pages', to: 'pages#index' 
  # sets up a get route to view an individual page that matches the particular id
  # :id path is available within the controller as params[:id], this request gets routed to pages controller's show method 

  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  post '/pages', to: 'pages#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
