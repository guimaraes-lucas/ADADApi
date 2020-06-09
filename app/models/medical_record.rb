# frozen_string_literal: true

# class with relationships of Medical
class MedicalRecord < ApplicationRecord
  belongs_to :person
end
