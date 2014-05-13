Baazino::Application.routes.draw do
  resources :profiles

  resources :likes

  resources :game_rates

  resources :platforms

  resources :banks

  resources :developer_accounts

  resources :developers

  resources :reviews

  resources :gates

  resources :genres

  resources :comments

  resources :purchases

  devise_for :users
  resources :games

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'games#index'

  # Example of regular route:
     get 'devgames' => 'developers#devgames'
     get 'purchased_games' => 'purchases#purchased_games'

     get 'topgames' => 'games#all_top'
     get 'newgames' => 'games#all_new'
     get 'dowloadedgames' => 'games#all_downloaded'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #  get 'games/:id/download' => 'game#dowload', as: :download

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

  resources :game do
    member do
      put "like", to: "games#upvote"
      put "dislike", to: "games#downvote"
      put "download", to: "games#download"
    end
  end
  resources :game do
    resources :comments
  end
end
