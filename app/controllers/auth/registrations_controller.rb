# frozen_string_literal: true

module Auth
  class RegistrationsController < Devise::RegistrationsController

    protected

    def update_resource(resource, params)
      if params[:donor][:password].blank? && params[:donor][:password_confirmation].blank?
        resource.update_without_password(params)
      else
        resource.update(params)
      end
    end
  end
end
