# frozen_string_literal: true

# class of migration that create WalletTeachers entity
class CreateWalletTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :wallet_teachers do |t|
      t.references :document, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
