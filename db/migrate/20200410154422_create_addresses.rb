# frozen_string_literal: true

# class of migration that create address entity
class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.text :complement

      t.timestamps
    end
  end
end
