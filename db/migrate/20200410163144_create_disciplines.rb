# frozen_string_literal: true

# class migration of creation the discipline
class CreateDisciplines < ActiveRecord::Migration[6.0]
  def change
    create_table :disciplines do |t|
      t.string :description
      t.date :begin
      t.date :end

      t.timestamps
    end
  end
end
