# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teachers
  resources :classrooms
  resources :grades
  resources :disciplines
  resources :medical_records
  resources :congregational_histories
  resources :churches
  resources :addresses
  resources :responsibles
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
