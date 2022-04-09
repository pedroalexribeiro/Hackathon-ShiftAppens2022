# frozen_string_literal: true

class Game < ApplicationRecord
  enum genre: {
    game: 0,
    survey: 1
  }
end
