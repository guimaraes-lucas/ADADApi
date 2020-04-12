# frozen_string_literal: true

# class with relationships of WalletTeacher
class WalletTeacher < ApplicationRecord
  belongs_to :document
  belongs_to :teacher
end
