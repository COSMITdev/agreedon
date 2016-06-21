Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :agreement
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'terms-of-use', to: 'pages#terms_of_use', as: :terms_of_use
end
