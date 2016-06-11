Rails.application.routes.draw do

  get("/", { :controller => "fridge_contents", :action => "index" })

  # Routes for the Fridge_content resource:
  # CREATE
  get "/fridge_contents/new", :controller => "fridge_contents", :action => "new"
  post "/create_fridge_content", :controller => "fridge_contents", :action => "create"

  # READ
  get "/fridge_contents", :controller => "fridge_contents", :action => "index"
  get "/fridge_contents/:id", :controller => "fridge_contents", :action => "show"

  # UPDATE
  get "/fridge_contents/:id/edit", :controller => "fridge_contents", :action => "edit"
  post "/update_fridge_content/:id", :controller => "fridge_contents", :action => "update"

  # DELETE
  get "/delete_fridge_content/:id", :controller => "fridge_contents", :action => "destroy"

  # MOVE TO SHOPPING LIST
  get "/shopping_lists/addtoshop", :controller => "shopping_lists", :action => "addtoshop"
  post "/create_shopping_list", :controller => "shopping_lists", :action => "create"

  #------------------------------

  # Routes for the Shopping_list resource:
  # CREATE
  get "/shopping_lists/new", :controller => "shopping_lists", :action => "new"
  post "/create_shopping_list", :controller => "shopping_lists", :action => "create"

  # READ
  get "/shopping_lists", :controller => "shopping_lists", :action => "index"
  get "/shopping_lists/:id", :controller => "shopping_lists", :action => "show"

  # UPDATE
  get "/shopping_lists/:id/edit", :controller => "shopping_lists", :action => "edit"
  post "/update_shopping_list/:id", :controller => "shopping_lists", :action => "update"

  # DELETE
  get "/delete_shopping_list/:id", :controller => "shopping_lists", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
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
