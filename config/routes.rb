# frozen_string_literal: true

Rails.application.routes.draw do
  resources :wallet_students
  resources :wallet_teachers
  resources :attendance_diaries
  resources :lessons
  resources :associates
  resources :students
  resources :documents
  resources :births
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
end
