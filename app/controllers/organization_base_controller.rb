# frozen_string_literal: true

class OrganizationBaseController < ApplicationController
  before_action :authenticate_organization!, unless: :devise_controller?

  layout 'feed'
end
