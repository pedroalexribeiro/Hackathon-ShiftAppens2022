# frozen_string_literal: true

module Donors
  class RevenueController < DonorBaseController
    before_action :set_game, only: %i[show]

    def index; end

    # GET /donors/1 or /donors/1.json
    def show
      respond_to do |format|
        format.html { render :show, layout: false }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find_by(slang: params[:slang])
    end
  end
end
