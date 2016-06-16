Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :agreement
  root to: 'pages#home'
end
