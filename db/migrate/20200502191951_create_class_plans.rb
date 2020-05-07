# frozen_string_literal: true

# Class migration for create entity class plans
class CreateClassPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :class_plans do |t|
      t.string :title
      t.date :date
      t.string :theme
      t.text :versicle
      t.text :objective
      t.text :content
      t.text :activity
      t.text :challenge
      t.text :appraisal

      t.timestamps
    end
  end
end
