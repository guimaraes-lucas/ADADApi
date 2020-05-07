# frozen_string_literal: true

# class with relationships of ClassDeployment
class ClassDeployment < ApplicationRecord
  belongs_to :class_plan
end
