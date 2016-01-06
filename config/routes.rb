Rails.application.routes.draw do
  resources :blog_posts, only: :create
end
