# frozen_string_literal: true

# class migration of creation the AttendanceDiaries entity
class CreateAttendanceDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :attendance_diaries do |t|
      t.references :student, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.boolean :present

      t.timestamps
    end
  end
end
