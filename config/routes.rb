Rails.application.routes.draw do


  # Routes for the User resource:
  # CREATE
  root "users#login"
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/therapists", :controller => "therapists", :action => "index"
  get "/therapists/:id", :controller => "therapists", :action => "show"

  # UPDATE
  get "/therapists/:id/edit", :controller => "therapists", :action => "edit"
  post "/update_therapist/:id", :controller => "therapists", :action => "update"

  # DELETE
  get "/delete_therapist/:id", :controller => "therapists", :action => "destroy"
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




  # Routes for the Conversation resource:
  # CREATE
  get "/conversations/new", :controller => "conversations", :action => "new"
  post "/create_conversation", :controller => "conversations", :action => "create"

  # READ
  get "/conversations", :controller => "conversations", :action => "index"
  get "/conversations/:id", :controller => "conversations", :action => "show"

  # UPDATE
  get "/conversations/:id/edit", :controller => "conversations", :action => "edit"
  post "/update_conversation/:id", :controller => "conversations", :action => "update"

  # DELETE
  get "/delete_conversation/:id", :controller => "conversations", :action => "destroy"
  #------------------------------

  # # Routes for the Appointment resource:
  # # CREATE
  # get "/appointments/new", :controller => "appointments", :action => "new"
  # post "/create_appointment", :controller => "appointments", :action => "create"
  #
  # # READ
  # get "/appointments", :controller => "appointments", :action => "index"
  # get "/appointments/:id", :controller => "appointments", :action => "show"
  #
  # # UPDATE
  # get "/appointments/:id/edit", :controller => "appointments", :action => "edit"
  # post "/update_appointment/:id", :controller => "appointments", :action => "update"
  #
  # # DELETE
  # get "/delete_appointment/:id", :controller => "appointments", :action => "destroy"
  #------------------------------

  # # Routes for the User_note resource:
  # # CREATE
  # get "/user_notes/new", :controller => "user_notes", :action => "new"
  # post "/create_user_note", :controller => "user_notes", :action => "create"
  #
  # # READ
  # get "/user_notes", :controller => "user_notes", :action => "index"
  # get "/user_notes/:id", :controller => "user_notes", :action => "show"
  #
  # # UPDATE
  # get "/user_notes/:id/edit", :controller => "user_notes", :action => "edit"
  # post "/update_user_note/:id", :controller => "user_notes", :action => "update"
  #
  # # DELETE
  # get "/delete_user_note/:id", :controller => "user_notes", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Therapist_note resource:
  # # CREATE
  # get "/therapist_notes/new", :controller => "therapist_notes", :action => "new"
  # post "/create_therapist_note", :controller => "therapist_notes", :action => "create"
  #
  # # READ
  # get "/therapist_notes", :controller => "therapist_notes", :action => "index"
  # get "/therapist_notes/:id", :controller => "therapist_notes", :action => "show"
  #
  # # UPDATE
  # get "/therapist_notes/:id/edit", :controller => "therapist_notes", :action => "edit"
  # post "/update_therapist_note/:id", :controller => "therapist_notes", :action => "update"
  #
  # # DELETE
  # get "/delete_therapist_note/:id", :controller => "therapist_notes", :action => "destroy"
  # #------------------------------



  # # Routes for the User_insurance resource:
  # # CREATE
  # get "/user_insurances/new", :controller => "user_insurances", :action => "new"
  # post "/create_user_insurance", :controller => "user_insurances", :action => "create"
  #
  # # READ
  # get "/user_insurances", :controller => "user_insurances", :action => "index"
  # get "/user_insurances/:id", :controller => "user_insurances", :action => "show"
  #
  # # UPDATE
  # get "/user_insurances/:id/edit", :controller => "user_insurances", :action => "edit"
  # post "/update_user_insurance/:id", :controller => "user_insurances", :action => "update"
  #
  # # DELETE
  # get "/delete_user_insurance/:id", :controller => "user_insurances", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Accepted_insurance resource:
  # # CREATE
  # get "/accepted_insurances/new", :controller => "accepted_insurances", :action => "new"
  # post "/create_accepted_insurance", :controller => "accepted_insurances", :action => "create"
  #
  # # READ
  # get "/accepted_insurances", :controller => "accepted_insurances", :action => "index"
  # get "/accepted_insurances/:id", :controller => "accepted_insurances", :action => "show"
  #
  # # UPDATE
  # get "/accepted_insurances/:id/edit", :controller => "accepted_insurances", :action => "edit"
  # post "/update_accepted_insurance/:id", :controller => "accepted_insurances", :action => "update"
  #
  # # DELETE
  # get "/delete_accepted_insurance/:id", :controller => "accepted_insurances", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Therapist_specialty resource:
  # # CREATE
  # get "/therapist_specialties/new", :controller => "therapist_specialties", :action => "new"
  # post "/create_therapist_specialty", :controller => "therapist_specialties", :action => "create"
  #
  # # READ
  # get "/therapist_specialties", :controller => "therapist_specialties", :action => "index"
  # get "/therapist_specialties/:id", :controller => "therapist_specialties", :action => "show"
  #
  # # UPDATE
  # get "/therapist_specialties/:id/edit", :controller => "therapist_specialties", :action => "edit"
  # post "/update_therapist_specialty/:id", :controller => "therapist_specialties", :action => "update"
  #
  # # DELETE
  # get "/delete_therapist_specialty/:id", :controller => "therapist_specialties", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the License resource:
  # # CREATE
  # get "/licenses/new", :controller => "licenses", :action => "new"
  # post "/create_license", :controller => "licenses", :action => "create"
  #
  # # READ
  # get "/licenses", :controller => "licenses", :action => "index"
  # get "/licenses/:id", :controller => "licenses", :action => "show"
  #
  # # UPDATE
  # get "/licenses/:id/edit", :controller => "licenses", :action => "edit"
  # post "/update_license/:id", :controller => "licenses", :action => "update"
  #
  # # DELETE
  # get "/delete_license/:id", :controller => "licenses", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Therapist_credential resource:
  # # CREATE
  # get "/therapist_credentials/new", :controller => "therapist_credentials", :action => "new"
  # post "/create_therapist_credential", :controller => "therapist_credentials", :action => "create"
  #
  # # READ
  # get "/therapist_credentials", :controller => "therapist_credentials", :action => "index"
  # get "/therapist_credentials/:id", :controller => "therapist_credentials", :action => "show"
  #
  # # UPDATE
  # get "/therapist_credentials/:id/edit", :controller => "therapist_credentials", :action => "edit"
  # post "/update_therapist_credential/:id", :controller => "therapist_credentials", :action => "update"
  #
  # # DELETE
  # get "/delete_therapist_credential/:id", :controller => "therapist_credentials", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Insurer resource:
  # # CREATE
  # get "/insurers/new", :controller => "insurers", :action => "new"
  # post "/create_insurer", :controller => "insurers", :action => "create"
  #
  # # READ
  # get "/insurers", :controller => "insurers", :action => "index"
  # get "/insurers/:id", :controller => "insurers", :action => "show"
  #
  # # UPDATE
  # get "/insurers/:id/edit", :controller => "insurers", :action => "edit"
  # post "/update_insurer/:id", :controller => "insurers", :action => "update"
  #
  # # DELETE
  # get "/delete_insurer/:id", :controller => "insurers", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the State resource:
  # # CREATE
  # get "/states/new", :controller => "states", :action => "new"
  # post "/create_state", :controller => "states", :action => "create"
  #
  # # READ
  # get "/states", :controller => "states", :action => "index"
  # get "/states/:id", :controller => "states", :action => "show"
  #
  # # UPDATE
  # get "/states/:id/edit", :controller => "states", :action => "edit"
  # post "/update_state/:id", :controller => "states", :action => "update"
  #
  # # DELETE
  # get "/delete_state/:id", :controller => "states", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Credential resource:
  # # CREATE
  # get "/credentials/new", :controller => "credentials", :action => "new"
  # post "/create_credential", :controller => "credentials", :action => "create"
  #
  # # READ
  # get "/credentials", :controller => "credentials", :action => "index"
  # get "/credentials/:id", :controller => "credentials", :action => "show"
  #
  # # UPDATE
  # get "/credentials/:id/edit", :controller => "credentials", :action => "edit"
  # post "/update_credential/:id", :controller => "credentials", :action => "update"
  #
  # # DELETE
  # get "/delete_credential/:id", :controller => "credentials", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Specialty resource:
  # # CREATE
  # get "/specialties/new", :controller => "specialties", :action => "new"
  # post "/create_specialty", :controller => "specialties", :action => "create"
  #
  # # READ
  # get "/specialties", :controller => "specialties", :action => "index"
  # get "/specialties/:id", :controller => "specialties", :action => "show"
  #
  # # UPDATE
  # get "/specialties/:id/edit", :controller => "specialties", :action => "edit"
  # post "/update_specialty/:id", :controller => "specialties", :action => "update"
  #
  # # DELETE
  # get "/delete_specialty/:id", :controller => "specialties", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Therapist_availability resource:
  # # CREATE
  # get "/therapist_availabilities/new", :controller => "therapist_availabilities", :action => "new"
  # post "/create_therapist_availability", :controller => "therapist_availabilities", :action => "create"
  #
  # # READ
  # get "/therapist_availabilities", :controller => "therapist_availabilities", :action => "index"
  # get "/therapist_availabilities/:id", :controller => "therapist_availabilities", :action => "show"
  #
  # # UPDATE
  # get "/therapist_availabilities/:id/edit", :controller => "therapist_availabilities", :action => "edit"
  # post "/update_therapist_availability/:id", :controller => "therapist_availabilities", :action => "update"
  #
  # # DELETE
  # get "/delete_therapist_availability/:id", :controller => "therapist_availabilities", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Time resource:
  # # CREATE
  # get "/times/new", :controller => "times", :action => "new"
  # post "/create_time", :controller => "times", :action => "create"
  #
  # # READ
  # get "/times", :controller => "times", :action => "index"
  # get "/times/:id", :controller => "times", :action => "show"
  #
  # # UPDATE
  # get "/times/:id/edit", :controller => "times", :action => "edit"
  # post "/update_time/:id", :controller => "times", :action => "update"
  #
  # # DELETE
  # get "/delete_time/:id", :controller => "times", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Completed_training resource:
  # # CREATE
  # get "/completed_trainings/new", :controller => "completed_trainings", :action => "new"
  # post "/create_completed_training", :controller => "completed_trainings", :action => "create"
  #
  # # READ
  # get "/completed_trainings", :controller => "completed_trainings", :action => "index"
  # get "/completed_trainings/:id", :controller => "completed_trainings", :action => "show"
  #
  # # UPDATE
  # get "/completed_trainings/:id/edit", :controller => "completed_trainings", :action => "edit"
  # post "/update_completed_training/:id", :controller => "completed_trainings", :action => "update"
  #
  # # DELETE
  # get "/delete_completed_training/:id", :controller => "completed_trainings", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Training resource:
  # # CREATE
  # get "/trainings/new", :controller => "trainings", :action => "new"
  # post "/create_training", :controller => "trainings", :action => "create"
  #
  # # READ
  # get "/trainings", :controller => "trainings", :action => "index"
  # get "/trainings/:id", :controller => "trainings", :action => "show"
  #
  # # UPDATE
  # get "/trainings/:id/edit", :controller => "trainings", :action => "edit"
  # post "/update_training/:id", :controller => "trainings", :action => "update"
  #
  # # DELETE
  # get "/delete_training/:id", :controller => "trainings", :action => "destroy"
  # #------------------------------

  devise_for :users
  # devise_for :veterans
  # root "controllername#index"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
