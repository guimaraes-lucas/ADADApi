# frozen_string_literal: true

# class with relationships of Teacher
class Teacher < ApplicationRecord
  belongs_to :birth
  belongs_to :address
  has_many :classrooms
  has_many :documents
end
