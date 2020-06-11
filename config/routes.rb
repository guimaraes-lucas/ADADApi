# frozen_string_literal: true

Rails.application.routes.draw do
  resources :receivables
  resources :payables
  resources :people
  resources :class_plans
  resources :attendance_diaries
  resources :lessons
  resources :students
  resources :teachers
  resources :classrooms
  resources :disciplines
  resources :churches
  resources :responsibles
  resources :events
end
