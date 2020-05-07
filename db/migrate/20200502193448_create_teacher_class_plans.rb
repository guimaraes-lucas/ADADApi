# frozen_string_literal: true

# Class migration for create entity weak between teachers and class plans
class CreateTeacherClassPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_class_plans do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :class_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
