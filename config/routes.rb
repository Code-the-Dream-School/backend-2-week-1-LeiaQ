Rails.application.routes.draw do
  resources :posts
  # get requests for the /pages path should go to the PagesController's index method
  get '/pages', to: 'pages#index' 
  # sets up a get route to view an individual page that matches the particular id
  # :id path is available within the controller as params[:id], this request gets routed to pages controller's show method 
  post '/pages', to: 'pages#create'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  #when you're modifying existing data on the server (rather 
  #than adding new data), you're supposed to use a PUT or 
  #PATCH request rather than a POST request. So when you 
  #click the submit button on the edit form, that's what 
  #your browser sends to the server: a PATCH request.
  get 'pages/:id/edit', to: 'pages#edit', as: 'edit_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
