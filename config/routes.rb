Rails.application.routes.draw do
  devise_for :users
  
  resources :friends
  get 'home/about'
 
  devise_scope :user do

    unauthenticated :user do
      root :to => "devise/sessions#new"
    end
    authenticated :user do
      root :to => 'friends#index', as: :authenticated
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
