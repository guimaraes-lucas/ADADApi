# frozen_string_literal: true

# class with relationships of Grade
class Grade < ApplicationRecord
  belongs_to :discipline, dependent: :destroy
end
