# frozen_string_literal: true

# class with relationships of TeacherClassPlan
class TeacherClassPlan < ApplicationRecord
  belongs_to :teacher
  belongs_to :class_plan
end
