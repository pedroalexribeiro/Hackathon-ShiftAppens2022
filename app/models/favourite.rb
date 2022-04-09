# frozen_string_literal: true

class Favourite < ApplicationRecord
  # Relational table foreign_keys
  belongs_to :donor
  belongs_to :organization
end
