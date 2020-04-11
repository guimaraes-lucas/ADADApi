# frozen_string_literal: true

# class with relationships of CongregationalHistory
class CongregationalHistory < ApplicationRecord
  belongs_to :church, dependent: :destroy
end
