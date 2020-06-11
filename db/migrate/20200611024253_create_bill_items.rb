# frozen_string_literal: true

# class migration of creation the BillItems
class CreateBillItems < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_items do |t|
      t.integer :installment_number
      t.decimal :value
      t.date :due_date
      t.boolean :is_paid
      t.references :bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
