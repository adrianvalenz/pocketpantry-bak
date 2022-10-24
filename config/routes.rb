Rails.application.routes.draw do
  get :dashboard, to: "dashboard#show"
  devise_for :users
  
  root "home#show"
end
