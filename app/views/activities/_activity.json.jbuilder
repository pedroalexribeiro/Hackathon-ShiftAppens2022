# frozen_string_literal: true

json.extract! activity, :id, :name, :description, :source_id, :source_type, :created_at, :updated_at
json.url activity_url(activity, format: :json)
