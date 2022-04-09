# frozen_string_literal: true

module ActivityCreation
  extend ActiveSupport::Concern

  included do
    # Callbacks
    after_commit :options_for_activities

    def options_for_activities
      raise 'This method needs to be overrided in the specific method'
    end
  end
end
