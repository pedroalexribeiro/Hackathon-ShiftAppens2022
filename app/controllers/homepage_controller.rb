# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index, layout: false }
    end
  end
end
