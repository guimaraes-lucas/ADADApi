# frozen_string_literal: true

# class that defines the payable json structure
class PayableSerializer < ActiveModel::Serializer
  attributes :id
  has_one :bill
  has_one :person
end
