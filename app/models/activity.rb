# frozen_string_literal: true

class Activity < ApplicationRecord
  belongs_to :source, polymorphic: true
end
