# frozen_string_literal: true

# class migration of creation the Receivables
class CreateReceivables < ActiveRecord::Migration[6.0]
  def change
    create_table :receivables do |t|
      t.references :bill, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
