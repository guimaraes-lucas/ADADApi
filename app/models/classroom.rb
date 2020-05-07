# frozen_string_literal: true

# class with relationships of Classroom
class Classroom < ApplicationRecord
  has_many :teacher_classrooms, dependent: :destroy
  has_many :teachers, through: :teacher_classrooms

  accepts_nested_attributes_for :teachers
end
