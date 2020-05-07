# frozen_string_literal: true

# class with relationships of Discipline
class Discipline < ApplicationRecord
  has_many :grades, dependent: :destroy
  has_many :lessons, dependent: :destroy
end
