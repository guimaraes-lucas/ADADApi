# frozen_string_literal: true

# class with relationships of Person
class Person < ApplicationRecord
  belongs_to :birth
  belongs_to :address

  has_many :documents, dependent: :destroy
  has_many :medical_records, dependent: :destroy
  has_many :congregational_histories, dependent: :destroy

  accepts_nested_attributes_for :birth
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :documents
  accepts_nested_attributes_for :medical_records
  accepts_nested_attributes_for :congregational_histories
end
