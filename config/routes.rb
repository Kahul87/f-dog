Rails.application.routes.draw do
  resources :surveys
  get 'static_pages/home'
  
  get 'static_pages/toy'
  
  get 'static_pages/small'
  
  get 'static_pages/medium'
  
  get 'static_pages/large'
   
  get 'static_pages/xlarge'
  
  get 'static_pages/review'
  
  get 'static_pages/health'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  resources :questions do
    resources :answers
  end
  root 'static_pages#home'
end
