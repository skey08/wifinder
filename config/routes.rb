Rails.application.routes.draw do

  devise_for :users

  resources :workspaces do
    resources :reviews, only: [:create, :destroy]
  end

  root to: "pages#welcome"
end
