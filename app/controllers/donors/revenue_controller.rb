# frozen_string_literal: true

module Donors
  class RevenueController < DonorBaseController
    before_action :set_game, only: %i[show]

    def index
      @games = Game.all
    end

    # GET /donors/1 or /donors/1.json
    def show
      respond_to do |format|
        format.html { render :show, layout: false }
      end
    end

    def create
      current_donor.wallet.deposit(params[:score].to_i)
      session[:money_since_loging] += params[:score].to_i
      respond_to do |format|
        format.json { render json: { text: 'ok' } }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find_by(slang: params[:slang])
    end
  end
end
