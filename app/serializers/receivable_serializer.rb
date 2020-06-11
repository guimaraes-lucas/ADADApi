# frozen_string_literal: true

# class that defines the receivable json structure
class ReceivableSerializer < ActiveModel::Serializer
  attributes :id
  has_one :bill
  has_one :person
end
