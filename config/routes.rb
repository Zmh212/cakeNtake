Rails.application.routes.draw do
  resources :advertisements
  get 'report/custlist'
  get 'report/prodlist'
  get 'report/salelist'
  get 'report/reportmenu'
    
    get 'home/askname'
    post 'home/askname'
    
    get 'home/search'
    post 'home/search'
  resources :prodingrediants
  resources :employees
  resources :reviews
  resources :purchasedetails
  resources :purchases
  resources :categories
  resources :reorders
  resources :products
  resources :customers
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/help'
  get 'home/privacy'    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  root 'home#index'
end
