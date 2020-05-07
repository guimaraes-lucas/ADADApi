# frozen_string_literal: true

# class with relationships of ClassPlan
class ClassPlan < ApplicationRecord
  has_many :teacher_class_plans, dependent: :destroy
  has_many :teachers, through: :teacher_class_plans

  has_many :class_deployments
  has_many :class_resources

  accepts_nested_attributes_for :class_deployments
  accepts_nested_attributes_for :class_resources
end
