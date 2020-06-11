# frozen_string_literal: true

# class with especifications of Bill
class Bill < ApplicationRecord
  enum situation: [:opened, :resolved, :canceled]
end
