# frozen_string_literal: true

# class relationships of Birth
class Birth < ApplicationRecord
  belongs_to :address
end
