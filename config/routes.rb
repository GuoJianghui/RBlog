Rails.application.routes.draw do
  root 'static_pages#home'

  resources :posts

  resources :books

  get 'tags/:tag', to: 'posts#index', as: :tag

  get 'tags'      => 'posts#tag_cloud'

  get 'about'     => 'static_pages#about'

  get 'signup'    => 'users#new'

  get 'login'     => 'sessions#new'

  post 'login'    => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # ajax路由
  match '/application/preview', to: 'application#preview', via:'post'

  resources :users

end
