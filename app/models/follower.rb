# frozen_string_literal: true

class Follower < ApplicationRecord
  belongs_to :follower, class_name: 'Donor'
  belongs_to :followee, class_name: 'Donor'
end
