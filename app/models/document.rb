# frozen_string_literal: true

# class with relationships of Document
class Document < ApplicationRecord
  belongs_to :person
end
