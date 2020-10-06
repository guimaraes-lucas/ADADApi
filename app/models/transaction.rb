# frozen_string_literal: true

# class with relationships of Transaction
class Transaction < ApplicationRecord
  belongs_to :bill
  belongs_to :person
end
