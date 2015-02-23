  Rails.application.routes.draw do
  get 'registrations/sign_up_params'

  get 'registrations/account_update_params'

  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :posts do #nested resources
    resources :comments
  end
  root 'posts#index'
  get 'posts/new' => 'posts#new'
  get '/about' => "pages#about"
end
