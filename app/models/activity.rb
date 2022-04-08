# frozen_string_literal: true

class Activity < ApplicationRecord
  include Filterable

  belongs_to :source, polymorphic: true
end
