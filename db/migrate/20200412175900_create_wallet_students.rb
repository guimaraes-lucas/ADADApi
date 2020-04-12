# frozen_string_literal: true

# class of migration that create WalletStudents entity
class CreateWalletStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :wallet_students do |t|
      t.references :document, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
