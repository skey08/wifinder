Rails.application.routes.draw do

  devise_for :users

  resources :workspaces


  root to: "pages#welcome"
end
