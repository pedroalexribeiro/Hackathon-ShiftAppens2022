# frozen_string_literal: true

class Achievement < ApplicationRecord
  # Donor relations to achievements
  has_many :donors_achievement
  has_many :donors, through: :donors_achievement
end
