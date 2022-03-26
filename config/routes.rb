# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: :posts, controller: :posts, action: :index

  resources :comments
  resources :posts
end
