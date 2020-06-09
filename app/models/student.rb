# frozen_string_literal: true

# class with relationships of Student
class Student < ApplicationRecord
  belongs_to :person, dependent: :destroy
  belongs_to :classroom, optional: true

  has_many :kinships, dependent: :destroy
  has_many :responsibles, through: :kinships

  has_many :grades, dependent: :destroy
  has_many :teachers, through: :classroom

  accepts_nested_attributes_for :grades
end
