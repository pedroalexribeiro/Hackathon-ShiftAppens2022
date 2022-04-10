# frozen_string_literal: true

module Donors
  class FavouritesController < DonorBaseController
    before_action :set_event

    def create
      @service = TransferMoneyService.call(source: current_donor, target: @event, amount: params[:amount])
      respond_to do |format|
        format.js
      end
    end

    def destroy
      
    end

    private

    def set_event
      @event = Event.find(params[:event_id])
    end
  end
end
