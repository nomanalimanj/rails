Rails.application.routes.draw do
 # root 'product'
  
  resources :products
  resources :blogs
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
