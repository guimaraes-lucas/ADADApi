# frozen_string_literal: true

# class with relationships of Receivable
class Receivable < ApplicationRecord
  belongs_to :bill
  belongs_to :person
end
