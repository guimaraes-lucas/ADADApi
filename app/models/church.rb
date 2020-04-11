# frozen_string_literal: true

# class with relationships of Church
class Church < ApplicationRecord
  belongs_to :address
  has_many :congregational_histories, dependent: :destroy
end
