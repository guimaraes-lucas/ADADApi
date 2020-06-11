# frozen_string_literal: true

# class with relationships of Payable
class Payable < ApplicationRecord
  belongs_to :bill
  belongs_to :person
end
