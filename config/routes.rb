  Rails.application.routes.draw do
  devise_for :users
  resources :posts do #nested resources
    resources :comments
  end
  root 'posts#index'
  get 'posts/new' => 'posts#new'
end
