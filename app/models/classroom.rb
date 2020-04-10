# frozen_string_literal: true

# class with relationships of Classroom
class Classroom < ApplicationRecord
  belongs_to :teacher
end
