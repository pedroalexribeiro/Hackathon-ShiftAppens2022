# frozen_string_literal: true

class Favourite < ApplicationRecord
  belongs_to :donor
  belongs_to :organization
end
