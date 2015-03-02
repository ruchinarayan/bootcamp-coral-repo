
# mfshamim
Rails.application.routes.draw do
  root 'static_pages#home' 
  
  get '/theaters', to: 'theaters#index', as: 'theaters'

  get '/theaters/new', to: 'theaters#new', as: 'new_theater'
  post '/theaters', to: 'theaters#create'

  get '/theaters/:id', to: 'theaters#show', as: 'theater'

  get '/theaters/:id/edit', to: 'theaters#edit', as: 'edit_theater'
  patch '/theaters/:id', to: 'theaters#update'
  put '/theaters/:id', to: 'theaters#update'
  get '/theaters/5/edit', to: 'theaters#edit', as: 'edit1_theater'
  delete '/theaters/:id', to: 'theaters#destroy'


get '/people', to: 'people#index', as: 'people'
get '/people/new', to: 'people#new', as: 'new_people'
post '/people', to: 'people#create'

get '/people/:id', to: 'people#show', as: 'person'
get '/people/:id/edit', to: 'people#edit', as: 'edit_person'
patch '/people/:id', to: 'people#update'
put '/people/:id', to: 'people#update'

delete '/people/:id', to: 'people#destroy'

get 'example' => 'static_pages#example'
get 'recommender1a' => 'the_movie_recommender#recommender1a'
get 'recommender1b' => 'the_movie_recommender#recommender1b'
get '/movies', to: 'movies#index', as: 'studios'
get '/movies/new', to: 'movies#new', as: 'new_studio'
post '/movies', to: 'movies#create'
get 'aAddMovieReview', to: 'movie_controller#aAddMovieReview', as: "new_review"
post 'aAddMovieReview', to: 'movie_controller#submitMovieReview'
get 'vViewMovieReview', to: 'movie_controller#vViewMovieReview', as: "reviews"
get 'movie-delete' => 'static_pages#movie-delete'
get 'movie-index' => 'static_pages#movie-index'
get 'mfshamimTask2a' => 'my_static_pages#mfshamimTask2a'
get 'mfshamimTask2b' => 'my_static_pages2#mfshamimTask2b'
get 'hw5a' => 'my_static_pages#hw5a'
get 'hw5b' => 'my_static_pages#hw5b'


get '/vViewMovieReview/:id', to: 'movie_controller#show', as: "review"
get '/vViewMovieReview/:id/edit', to: 'movie_controller#edit', as: "edit_review"

patch '/vViewMovieReview/:id', to: 'movie_controller#update'
put '/vViewMovieReview/:id', to: 'movie_controller#update'

delete '/vViewMovieReview/:id', to: 'movie_controller#destroy'




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

end


