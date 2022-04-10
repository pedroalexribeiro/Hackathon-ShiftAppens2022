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
      binding.pry
      @service = TransferMoneyService.call(source: current_donor, target: @event, amount: params[:amount])
      binding.pry
      respond_to do |format|
        format.js
      end
    end

    private

    def set_event
      @event = Event.find(params[:event_id])
    end
  end
end
