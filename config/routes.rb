MadeInAtx2::Application.routes.draw do
  
  root to: 'companies#index', as: 'home'
  # Route created by 'root to:' :
  # home        /                             companies#index

  resources :companies

# routes creaed by 'resrouces':
#   companies GET    /companies(.:format)          companies#index
#              POST   /companies(.:format)          companies#create
#  new_company GET    /companies/new(.:format)      companies#new
# edit_company GET    /companies/:id/edit(.:format) companies#edit
#      company GET    /companies/:id(.:format)      companies#show
#              PUT    /companies/:id(.:format)      companies#update
#              DELETE /companies/:id(.:format)      companies#destroy

# Representational State Transfer (RESTful) 'request methods':
  # get
  # post
  # put
  # delete
  # patch ?



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
