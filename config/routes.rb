Rails.application.routes.draw do
  get 'posts/index'
  get 'pages/home'
  root 'pages#home'
  get 'pages/about_us'
  get '/contact' => 'pages#contact'
  get '/blog' => 'pages#post'
  get '/blog2' => 'posts#index'
  get '/hello/:name', to: 'pages#hello', as: 'hello'
  # get 'pages/contact'
  # get 'pages/post'
  # get '/about_us', to: 'pages#about_us'
end
