# frozen_string_literal: true

# class of migration that create Congregational History entity
class CreateCongregationalHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :congregational_histories do |t|
      t.Church :church
      t.date :entry
      t.date :exit

      t.timestamps
    end
  end
end
