# frozen_string_literal: true

class SearchEntitiesService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @params = params
  end

  attr_reader :params

  def call
    validate_params
    search_objects
    join_searches
    order_result
    self
  end

  private

  def validate_params
    true
  end

  # Make different objects searchable
  def search_objects
    Game.where(Game.arel_table[:name].matches("%#{search_value}%"))
  end

  def order_result

  end
end
