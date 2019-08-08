Rails.application.routes.draw do

root 'gossips#index'

resources :accueil
resources :contact
resources :gossips
resources :team
resources :users
resources :welcome
resources :city
resources :sessions


=begin
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/new'
  get 'welcome/create'
  get 'welcome/edit'
  get 'welcome/update'
  get 'welcome/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'team/index'
  get 'team/show'
  get 'team/new'
  get 'team/create'
  get 'team/edit'
  get 'team/update'
  get 'team/destroy'
  get 'gossips/index'
  get 'gossips/show'
  get 'gossips/new'
  get 'gossips/create'
  get 'gossips/edit'
  get 'gossips/update'
  get 'gossips/destroy'
  get 'contact/index'
  get 'contact/show'
  get 'contact/new'
  get 'contact/create'
  get 'contact/edit'
  get 'contact/update'
  get 'contact/destroy'
  get 'accueil/index'
  get 'accueil/show'
  get 'accueil/new'
  get 'accueil/create'
  get 'accueil/edit'
  get 'accueil/update'
  get 'accueil/destroy'
=end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
