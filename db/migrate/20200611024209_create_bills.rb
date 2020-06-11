# frozen_string_literal: true

# class migration of creation the Bills
class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :description
      t.decimal :total
      t.date :release_date
      t.integer :number_of_installments
      t.integer :situation

      t.timestamps
    end
  end
end
