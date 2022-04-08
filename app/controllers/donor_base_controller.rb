# frozen_string_literal: true

class DonorBaseController < ApplicationController
  before_action :authenticate_donor!, unless: :devise_controller?
end
