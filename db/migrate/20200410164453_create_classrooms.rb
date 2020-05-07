# frozen_string_literal: true

# class migration of creation the classroom
class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :description

      t.timestamps
    end
  end
end
