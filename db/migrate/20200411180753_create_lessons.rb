# frozen_string_literal: true

# class migration of creation the Lesson entity
class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :description
      t.date :date
      t.references :classroom, null: false, foreign_key: true
      t.references :discipline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
