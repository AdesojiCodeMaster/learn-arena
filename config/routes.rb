Rails.application.routes.draw do
  get 'mathematics/index'
  get 'mathematics/page1'
 get 'about', to: 'pages#about', as: 'about'
 get 'product', to: 'pages#product', as: 'product'
 get 'policy', to: 'pages#policy', as: 'policy'
 get 'term', to: 'pages#term', as: 'term'
 get 'faq', to: 'pages#faq', as: 'faq'
 get 'contact', to: 'pages#contact', as: 'contact'
 get 'index', to: 'mathematics#index', as: 'index'
 get 'page1', to: 'mathematics#page1', as: 'page1'
 get 'page2', to: 'mathematics#page2', as: 'page2'
 get 'page3', to: 'mathematics#page3', as: 'page3'
 get 'page4', to: 'mathematics#page4', as: 'page4'
 get 'page5', to: 'mathematics#page5', as: 'page5'
 get 'page6', to: 'mathematics#page6', as: 'page6'
 get 'page7', to: 'mathematics#page7', as: 'page7'
 get 'page8', to: 'mathematics#page8', as: 'page8'
 get 'page9', to: 'mathematics#page9', as: 'page9'
 get 'page10', to: 'mathematics#page10', as: 'page10'
 root to: 'mathematics#index'
devise_for :users
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

  resources :pages, only: [:new, :create]
  post    '/contact',  to: 'pages#create'
end
