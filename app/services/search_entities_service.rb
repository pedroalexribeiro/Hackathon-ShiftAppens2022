# frozen_string_literal: true

class SearchEntitiesService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @search_value  = params[:search_value]
    @filters       = params[:filters]
    @search        = {}
  end

  attr_reader :params, :search

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
    @search[:full] = @search[:organization].merge(@search[:donor]).merge(@search[:event])
  end

  def order_result
    @result[:list] = search[:full].sort_by(&:created_at)
  end

  def search_organizations
    @search[:organization] = Organization.where(Organization.arel_table[:name].matches("%#{search_value}%"))
  end

  def search_donors
    @search[:donor] = Donor.where(Donor.arel_table[:name].matches("%#{search_value}%"))
  end

  def search_events
    @search[:event] = Event.where(Event.arel_table[:name].matches("%#{search_value}%"))
  end

  class ObjectWrapper
    def initialize(opts = {})
      @object     = opts[:object]
      @created_at = @object.created_at
    end
  end
end
