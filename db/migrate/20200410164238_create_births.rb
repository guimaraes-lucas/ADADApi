# frozen_string_literal: true

# class migration of creation the Births
class CreateBirths < ActiveRecord::Migration[6.0]
  def change
    create_table :births do |t|
      t.date :date
      t.string :certificate
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
