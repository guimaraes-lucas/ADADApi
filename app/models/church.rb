# frozen_string_literal: true

# class with relationships of Church
class Church < ApplicationRecord
  belongs_to :address
end
