# frozen_string_literal: true

class AchievementService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @entity                = opts[:entity]
    @activity              = opts[:activity]
    @achivements_to_unlock = []
  end

  attr_reader :entity, :activity, :achivements_to_unlock

  def call
    search_possible_achivements
    unlock_achievements
    self
  end

  private

  def search_possible_achivements
    _searchable_params = activity.category
    @achivements_to_unlock = Achievement.where(nil)
  end

  def unlock_achievements
    entity.achivements << achivements_to_unlock
  end
end
