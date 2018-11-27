Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth/login' => 'user_token#create'
  get 'users', to: 'users#index'
  get 'profile', to: 'users#show'
  post 'signup', to: 'users#create'
  put 'user/update', to: 'users#update'
  delete 'user/delete', to: 'users#delete'


  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  get 'post/:id', to: 'posts#show', as: 'show_post_by_id'
  put 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#delete'
end
