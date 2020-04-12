# frozen_string_literal: true

# class with relationships of Student
class Student < ApplicationRecord
  belongs_to :birth, dependent: :destroy
  belongs_to :classroom, optional: true
  belongs_to :address, dependent: :destroy

  has_many :wallet_students, dependent: :destroy
  has_many :documents, through: :wallet_students

  has_many :relationships, dependent: :destroy
  has_many :responsibles, through: :relationships

  has_many :congregational_histories, dependent: :destroy
  has_many :medical_records, dependent: :destroy
  has_many :grades, dependent: :destroy
  has_many :teachers, through: :classroom

  accepts_nested_attributes_for :congregational_histories
  accepts_nested_attributes_for :medical_records
  accepts_nested_attributes_for :grades
  accepts_nested_attributes_for :documents
end
