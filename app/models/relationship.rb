# frozen_string_literal: true

# class relationships beetween responsibles and students
class Relationship < ApplicationRecord
  belongs_to :student
  belongs_to :responsible
end
