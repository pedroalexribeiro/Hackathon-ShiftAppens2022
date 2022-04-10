# frozen_string_literal: true

module Donors
  class FeedController < DonorBaseController
    def index
      @events = handle_params
    end

    private

    def handle_params
      if params[:name]
        service = SearchEntitiesService.call(search_value: params[:name])
        service.result[:list]
      else
        scope_feed
      end
    end

    def scope_feed
      result = case params[:scope]
               when 'local'
                 Organization.local(current_donor)
               when 'global'
                 Organization.all
               else
                 Organization.all
               end
      result.map(&:events).flatten.sort_by(&:created_at)
    end
  end
end
