Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :settings, only: %i(index)
  resources :users, only: %i(update)
end
