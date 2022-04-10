# frozen_string_literal: true

module Donors
  class DonationsController < DonorBaseController
    before_action :set_event

    def new
      respond_to do |format|
        format.js
      end
    end

    def create
      @service = TransferMoneyService.call(source: current_donor, target: @event, amount: params[:amount])
      respond_to do |format|
        format.html { redirect_to donors_feed_index_path }
      end
    end

    private

    def set_event
      @event = Event.find(params[:event_id])
    end
  end
end
