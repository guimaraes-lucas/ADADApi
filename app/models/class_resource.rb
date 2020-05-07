# frozen_string_literal: true

# class with relationships of ClassResource
class ClassResource < ApplicationRecord
  belongs_to :class_plan
end
