# frozen_string_literal: true

# class with relationships of Lesson
class Lesson < ApplicationRecord
  belongs_to :discipline
end
