class Activity < ApplicationRecord
  belongs_to :source, polymorphic: true
end
