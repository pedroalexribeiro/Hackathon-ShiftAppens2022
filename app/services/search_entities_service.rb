# frozen_string_literal: true

class SearchEntitiesService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @search_value  = params[:search_value]
    @filters       = params[:filters]
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
    search_organizations if filter[:organization]
    search_donors        if filter[:donor]
    search_events        if filter[:event]
  end

  def join_searches

  end

  def order_result

  end

  def search_organizations
    Organization.where(Organization.arel_table[:name].matches("%#{search_value}%"))
  end

  def search_donors
    Donor.where(Donor.arel_table[:name].matches("%#{search_value}%"))
  end

  def search_events
    Event.where(Event.arel_table[:name].matches("%#{search_value}%"))
  end
end
