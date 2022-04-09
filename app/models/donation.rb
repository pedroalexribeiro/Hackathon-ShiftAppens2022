# frozen_string_literal: true

class Donation < ApplicationRecord
  belongs_to :donor
  belongs_to :event
end
