# frozen_string_literal: true

class Event < ApplicationRecord
  # Organization reference
  belongs_to :organization

  # Donations relations
  has_many :donations, dependent: :destroy
  has_many :donators, class_name: 'Donor', through: :donations
end
