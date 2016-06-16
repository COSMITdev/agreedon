Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :agreement
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
end
