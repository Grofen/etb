Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tyres', to: 'tyres#index'
  get '/tyres/:id', to: 'tyres#show', as: 'tyre'
  get 'educations', to: 'educations#index'
  get '/educations/:id', to: 'educations#show', as: 'education'
end
