# frozen_string_literal: true

# class with relationships of TeacherClassroom
class TeacherClassroom < ApplicationRecord
  belongs_to :teacher
  belongs_to :classroom
end
