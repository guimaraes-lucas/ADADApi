# frozen_string_literal: true

# class of migration that create responsible entity
class CreateResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibles do |t|
      t.string :kinship
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
