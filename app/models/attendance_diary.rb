# frozen_string_literal: true

# class with relationships of AttendanceDiary
class AttendanceDiary < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
  has_one :discipline, through: :lesson
  has_one :classroom, through: :student
  has_one :teacher, through: :classroom
end
