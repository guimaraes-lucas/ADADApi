# frozen_string_literal: true

# class with relationships of Student
class Student < ApplicationRecord
  belongs_to :birth, dependent: :destroy
  belongs_to :classroom
  belongs_to :address, dependent: :destroy
  has_many :documents, dependent: :destroy
  has_many :associates, dependent: :destroy
  has_many :resposibles, through: :associates
  has_many :congrationalHistories, dependent: :destroy
  has_many :medicalRecords, dependent: :destroy
  has_many :grades, dependent: :destroy
  has_many :teachers, through: :classroom
end
