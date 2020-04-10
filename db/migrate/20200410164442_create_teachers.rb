# frozen_string_literal: true

# class migration of creation the teacher
class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.date :birthDate
      t.string :rg
      t.string :cpf
      t.Classroom :classes

      t.timestamps
    end
  end
end
