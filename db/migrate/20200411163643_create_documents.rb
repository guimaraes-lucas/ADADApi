# frozen_string_literal: true

# class migration of creation the Documents
class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :description
      t.string :registration

      t.timestamps
    end
  end
end
