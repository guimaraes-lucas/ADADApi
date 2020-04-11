# frozen_string_literal: true

# class with relationships of AttendanceDiary
class AttendanceDiary < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
end
