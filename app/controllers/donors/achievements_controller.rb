# frozen_string_literal: true

module Donors
  class AchievementsController < DonorBaseController
    before_action :set_achievements, only: %i[index]
    before_action :set_achievement, only: %i[show]

    # GET /achievements or /achievements.json
    def index; end

    # GET /achievements/1 or /achievements/1.json
    def show; end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_achievement
      @achievement = Achievement.find(params[:id])
    end

    def set_achievements
      @achievements = Achievement.all
    end

    # Only allow a list of trusted parameters through.
    def achievement_params
      params.require(:achievement).permit(:name, :description)
    end
  end
end
