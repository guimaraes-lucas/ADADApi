# frozen_string_literal: true

# class migration of creation the associate responsibles and students
class CreateAssociates < ActiveRecord::Migration[6.0]
  def change
    create_table :associates do |t|
      t.references :student, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
