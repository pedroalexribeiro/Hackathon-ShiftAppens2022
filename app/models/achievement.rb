# frozen_string_literal: true

class Achievement < ApplicationRecord
  # Donor relations to achievements
  has_many :donor_achievements
  has_many :donors, through: :donor_achievements, source: :achievement
end
