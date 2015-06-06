Rails.application.routes.draw do

  root 'parks#index'
  # Routes for the Store resource:
  # CREATE
  get "/stores/new", :controller => "stores", :action => "new"
  post "/create_store", :controller => "stores", :action => "create"

  # READ
  get "/stores", :controller => "stores", :action => "index"
  get "/stores/:id", :controller => "stores", :action => "show"

  # UPDATE
  get "/stores/:id/edit", :controller => "stores", :action => "edit"
  post "/update_store/:id", :controller => "stores", :action => "update"

  # DELETE
  get "/delete_store/:id", :controller => "stores", :action => "destroy"
  #------------------------------

  devise_for :users
  # devise_scope :user do
  # root :to => 'devise/sessions#new'



  # get "/", :controller => "users", :action => "sign_in"
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Park resource:
  # CREATE
  get "/parks/new", :controller => "parks", :action => "new"
  post "/create_park", :controller => "parks", :action => "create"

  # READ
  get "/parks", :controller => "parks", :action => "index"
  get "/parks/:id", :controller => "parks", :action => "show"

  # UPDATE
  get "/parks/:id/edit", :controller => "parks", :action => "edit"
  post "/update_park/:id", :controller => "parks", :action => "update"

  # DELETE
  get "/delete_park/:id", :controller => "parks", :action => "destroy"
  #------------------------------


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
