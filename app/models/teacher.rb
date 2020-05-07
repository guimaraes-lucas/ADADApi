# frozen_string_literal: true

# class with relationships of Teacher
class Teacher < ApplicationRecord
  belongs_to :birth
  belongs_to :address

  has_many :wallet_teachers, dependent: :destroy
  has_many :documents, through: :wallet_teachers

  has_many :teacher_class_plans, dependent: :destroy
  has_many :class_plans, through: :teacher_class_plans

  has_many :teacher_classrooms, dependent: :destroy
  has_many :classrooms, through: :teacher_classrooms

  accepts_nested_attributes_for :birth
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :classrooms
  accepts_nested_attributes_for :documents
end
