# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :sports
  root to: 'home#index'
end
