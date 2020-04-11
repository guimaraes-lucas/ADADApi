# frozen_string_literal: true

# class with relationships of Responsible
class Responsible < ApplicationRecord
  has_many :associates, dependent: :destroy
  has_many :students, through: :associates
end
