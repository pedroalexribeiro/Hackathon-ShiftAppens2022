# frozen_string_literal: true

json.extract! achievement, :id, :name, :description, :created_at, :updated_at
json.url achievement_url(achievement, format: :json)
