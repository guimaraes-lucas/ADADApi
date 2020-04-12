# frozen_string_literal: true

# class migration of creation the medical record
class CreateMedicalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_records do |t|
      t.string :question
      t.boolean :owns
      t.string :answer
      t.string :problem
      t.string :medicine
      t.boolean :featured
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
