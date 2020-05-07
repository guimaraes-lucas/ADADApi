# frozen_string_literal: true

# Class migration for create entity class resources that dependent of class plan
class CreateClassResources < ActiveRecord::Migration[6.0]
  def change
    create_table :class_resources do |t|
      t.string :description
      t.references :class_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
