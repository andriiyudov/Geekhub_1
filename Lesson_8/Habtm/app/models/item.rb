# frozen_string_literal: true
class Item < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :carts
end
