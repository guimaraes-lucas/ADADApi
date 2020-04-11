# frozen_string_literal: true

# class relationships beetween responsibles and students
class Associate < ApplicationRecord
  belongs_to :student
  belongs_to :responsible
end
