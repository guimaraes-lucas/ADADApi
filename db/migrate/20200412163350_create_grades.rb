# frozen_string_literal: true

# class migration of creation the grade
class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.float :note
      t.references :discipline, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
