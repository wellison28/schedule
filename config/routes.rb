# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  post "/reservations", to: "reservations#create"

  root "home#index"
end
