# frozen_string_literal: true

# class migration of creation the Payables
class CreatePayables < ActiveRecord::Migration[6.0]
  def change
    create_table :payables do |t|
      t.references :bill, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
