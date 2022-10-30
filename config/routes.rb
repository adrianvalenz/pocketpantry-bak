Rails.application.routes.draw do
  namespace :dashboard do
    resources :recipes
  end
  get :dashboard, to: "dashboard#show"
  devise_for :users

  root "home#index"
end
