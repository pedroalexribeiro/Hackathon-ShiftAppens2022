# frozen_string_literal: true

class Event < ApplicationRecord
  include Filterable

  # Organization reference
  belongs_to :organization

  # Donations relations
  has_many :donations, dependent: :destroy
  has_many :donators, class_name: 'Donor', through: :donations, source: :donor

  # Active Record Blob to save images
  has_one_attached :banner, dependent: :destroy

  delegate :wallet, to: :organization
end
