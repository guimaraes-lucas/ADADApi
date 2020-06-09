# frozen_string_literal: true

# class with relationships of Responsible
class Responsible < ApplicationRecord
  belongs_to :person, dependent: :destroy
  has_many :kinships, dependent: :destroy
  has_many :students, through: :kinships
end
