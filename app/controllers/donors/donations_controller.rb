# frozen_string_literal: true

module Donors
  class DonationsController < DonorBaseController
    def new; end

    def create
      set_event

      TransferMoneyService.call(source: current_donor, target: @event, amount: params[:amount])
    end

    private

    def set_event
      @event = Event.find(params[:event_id])
    end
  end
end
