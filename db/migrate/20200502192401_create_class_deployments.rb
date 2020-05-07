# frozen_string_literal: true

# Class migration for create entity class deployments dependents of class plans
class CreateClassDeployments < ActiveRecord::Migration[6.0]
  def change
    create_table :class_deployments do |t|
      t.string :description
      t.integer :sequence
      t.references :class_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
