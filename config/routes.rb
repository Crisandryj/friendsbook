Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users, controllers: {
       sessions: 'users/sessions' },
       path_names: { sign_in: 'login'}

  resources :posts, :users, :likes, :friendshipsr
  root "posts#index"

end
