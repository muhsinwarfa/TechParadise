Rails.application.routes.draw do
  resources :users do
     get :make_admin, on: :member
  end 
  resources :platforms
  resources :roles do
     get :apply, on: :member
  end
  resources :ideas

  resources :sessions , only: [:new , :create , :destroy]

  # root 'ideas#index' 
   root 'visitors#new' 

  get 'sessions/new' => 'sessions#new', as: :login
  get 'sessions/destroy' => 'sessions#destroy', as: :logout
  get 'users/new' => 'users#new', as: :signup
  get 'newest_first' => 'ideas#newest_first', as: :ideas_newest_first
  get 'oldest_first' => 'ideas#oldest_first', as: :ideas_oldest_first
  get 'names_descending' => 'ideas#names_descending' , as: :ideas_names_descending
  get 'names_ascending' => 'ideas#names_ascending' , as: :ideas_names_ascending
  get 'only_platform' => 'ideas#only_platform', as: :ideas_only_platform
  get 'help_needed' => 'ideas#help_needed', as: :ideas_help_needed
  get 'visitors' => 'visitors#new'
  
  
  
  


 

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
