# frozen_string_literal: true

# Class migration for create entity weak between teachers and classrooms
class CreateTeacherClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_classrooms do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
