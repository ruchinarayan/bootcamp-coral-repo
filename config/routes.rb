Rails.application.routes.draw do
 

  root 'static_pages#home' 
  get 'example' => 'static_pages#example'
  get 'recommender1a' => 'the_movie_recommender#recommender1a'
  get 'recommender1b' => 'the_movie_recommender#recommender1b'

  # Start of code for Task4 added by rruchi
  get 'aAddMovieReview' => 'movie_controller#aAddMovieReview'
  post 'aAddMovieReview' => 'movie_controller#submitMovieReview'
  get 'vViewMovieReview' => 'movie_controller#vViewMovieReview'
  # End of code for Task4 added by rruchi

  get 'movie-delete' => 'static_pages#movie-delete'
  get 'movie-index' => 'static_pages#movie-index'
  get 'mfshamimTask2a' => 'my_static_pages#mfshamimTask2a'
  get 'mfshamimTask2b' => 'my_static_pages2#mfshamimTask2b'
  get 'hw5a' => 'my_static_pages#hw5a'
  get 'hw5b' => 'my_static_pages#hw5b'



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
