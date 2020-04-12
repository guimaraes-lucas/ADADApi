# frozen_string_literal: true

# class with relationships of Responsible
class Responsible < ApplicationRecord
  has_many :relationships, dependent: :destroy
  has_many :students, through: :relationships
end
