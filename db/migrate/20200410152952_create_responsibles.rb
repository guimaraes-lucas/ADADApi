# frozen_string_literal: true

# class of migration that create responsible entity
class CreateResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibles do |t|
      t.string :type
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
