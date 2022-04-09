# frozen_string_literal: true

class DonorAchievement < ApplicationRecord
  belongs_to :donor
  belongs_to :achievement
end
