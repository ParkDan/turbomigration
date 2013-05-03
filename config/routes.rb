Turbomigration::Application.routes.draw do
  # Routes for the Process resource:
  # CREATE
  get '/processes/new', controller: 'processes', action: 'new', as: 'new_process'
  post '/processes', controller: 'processes', action: 'create'

  # READ
  get '/processes', controller: 'processes', action: 'index', as: 'processes'
  get '/processes/:id', controller: 'processes', action: 'show', as: 'process'

  # UPDATE
  get '/processes/:id/edit', controller: 'processes', action: 'edit', as: 'edit_process'
  put '/processes/:id', controller: 'processes', action: 'update'

  # DELETE
  delete '/processes/:id', controller: 'processes', action: 'destroy'
  #------------------------------

  root :to => 'Pages#index'
  # Routes for the Form resource:
  # CREATE
  get '/forms/new', controller: 'forms', action: 'new', as: 'new_form'
  post '/forms', controller: 'forms', action: 'create'

  # READ
  get '/forms', controller: 'forms', action: 'index', as: 'forms'
  get '/forms/:id', controller: 'forms', action: 'show', as: 'form'

  # UPDATE
  get '/forms/:id/edit', controller: 'forms', action: 'edit', as: 'edit_form'
  put '/forms/:id', controller: 'forms', action: 'update'

  # DELETE
  delete '/forms/:id', controller: 'forms', action: 'destroy'
  #------------------------------

devise_for :users
#create
#read
get '/', :controller => "Pages", :action => "index", :as => "index"
get '/about', :controller=> "Pages", :action=> "about", :as => "about"
get '/contact', :controller=> "Pages", :action=> "contact", :as=> "contact"
get '/concurrent', :controller=> "Pages", :action=> "concurrent", :as=> "concurrent"
#update


#delete


end
