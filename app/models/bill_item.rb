# frozen_string_literal: true

# class with relationships of BillItem
class BillItem < ApplicationRecord
  belongs_to :bill
end
