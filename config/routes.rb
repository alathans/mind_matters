Rails.application.routes.draw do

  devise_for :users
  root "users#welcome"

  # Routes for the USER resource:
  # CREATE

  # READ
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # # DELETE - Not allowing this for now so don't accidentally delete sample user accounts.
  # get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Therapist resource:
  # CREATE
  get "/therapists/new", :controller => "therapists", :action => "new"
  post "/create_therapist", :controller => "therapists", :action => "create"

  # READ
  get "/therapists", :controller => "therapists", :action => "index"
  get "/therapists/:id", :controller => "therapists", :action => "show"

  # UPDATE
  get "/therapists/:id/edit", :controller => "therapists", :action => "edit"
  post "/update_therapist/:id", :controller => "therapists", :action => "update"

  # DELETE
  get "/delete_therapist/:id", :controller => "therapists", :action => "destroy"
  #------------------------------

  # Routes for the About Mind Matters (FAQs):
  # READ
  get "/about", :controller => "users", :action => "about"

  #------------------------------

  # Routes for Sending Therapist a Message
  # CREATE
  get "/therapists/:id/message", :controller => "conversations", :action => "new"
  post "/create_message", :controller => "conversations", :action => "create"


end
