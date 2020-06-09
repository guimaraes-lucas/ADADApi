# frozen_string_literal: true

# class with relationships of Teacher
class Teacher < ApplicationRecord
  belongs_to :person, dependent: :destroy

  has_many :teacher_class_plans, dependent: :destroy
  has_many :class_plans, through: :teacher_class_plans

  has_many :teacher_classrooms, dependent: :destroy
  has_many :classrooms, through: :teacher_classrooms

  accepts_nested_attributes_for :classrooms
end
