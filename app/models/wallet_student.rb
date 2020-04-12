# frozen_string_literal: true

# class with relationships of WalletStudent
class WalletStudent < ApplicationRecord
  belongs_to :document
  belongs_to :student
end
