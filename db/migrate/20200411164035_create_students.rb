# frozen_string_literal: true

# class migration of creation the Students
class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.references :birth, null: false, foreign_key: true
      t.boolean :studying
      t.string :grade
      t.string :schooling
      t.string :blood_type
      t.boolean :baptized_in_water
      t.boolean :baptized_in_holy_spirit
      t.boolean :sunday_school_student
      t.boolean :developing_activity_in_the_church
      t.boolean :can_swim
      t.text :comments
      t.references :classroom, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
