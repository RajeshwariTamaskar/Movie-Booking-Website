BookingMovie::Application.routes.draw do
  resources :users

  get "users/login"
  get "payments/make_a_payment"
  get "shopping_carts/add_to_cart"
  get "theatre_movies/theatre_movie_list" 
  resources :theatre_movies
  post "users/login"
  post "payments/make_a_payment"
  post "theatre_movies/theatre_movie_list"
  post "shopping_carts/add_to_cart"
  resources :payments

  resources :reviews

  resources :search_theatres

  get "search_theatres/search_theatre_byzip"
  post "search_theatres/search_theatre_byzip"
  resources :search_thatres

  resources :shopping_carts

  get "main_page/index"
  resources :movies

  resources :shows

  resources :screens

  resources :theatres



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
