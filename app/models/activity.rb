# frozen_string_literal: true

class Activity < ApplicationRecord
  include Filterable

  after_commit :check_achievements

  scope :filter_by_category, ->(category) { where category: category }

  belongs_to :source, polymorphic: true

  enum category: {
    login: 0,
    event: 1,
    donate: 2,
    revenue: 3,
    achievement: 4
  }

  def check_achievements
    AchievementService.call(entity: source, activity: self)
  end
end
