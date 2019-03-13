Rails.application.routes.draw do
  devise_for :admin_users, { class_name: 'AdminUser' }.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  devise_for :users
  resources :vanues
  resources :amenities
  resources :events
  resources :owners
  resources :users
  root to: 'vanues#index'

  # root :to => redirect("/users/login")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
