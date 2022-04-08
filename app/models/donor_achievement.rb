class DonorAchievement < ApplicationRecord
  belongs_to :donor
  belongs_to :achievement
end
