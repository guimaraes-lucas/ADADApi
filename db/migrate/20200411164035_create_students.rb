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
      t.string :bloodType
      t.boolean :baptizedInWater
      t.boolean :baptizedInholySpirit
      t.boolean :sundaySchoolStudent
      t.boolean :developingActivityInTheChurch
      t.boolean :canSwim
      t.text :comments
      t.references :classroom, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
