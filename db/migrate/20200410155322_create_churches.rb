# frozen_string_literal: true

# class of migration that create church entity
class CreateChurches < ActiveRecord::Migration[6.0]
  def change
    create_table :churches do |t|
      t.string :denomination
      t.string :congregation
      t.Address :address

      t.timestamps
    end
  end
end
