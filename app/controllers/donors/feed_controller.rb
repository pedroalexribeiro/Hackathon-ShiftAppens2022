# frozen_string_literal: true

module Donors
  class FeedController < DonorBaseController
    def index
      @events = Organization.all.map(&:events).flatten
    end
  end
end
