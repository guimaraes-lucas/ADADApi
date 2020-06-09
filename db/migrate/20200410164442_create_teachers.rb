# frozen_string_literal: true

# class migration of creation the teacher
class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
