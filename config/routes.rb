Rails.application.routes.draw do
  get :dashboard, to: "dashboard#show"
  devise_for :users

  get 'home/show', to: "home#show"
  root "home#show"
end
