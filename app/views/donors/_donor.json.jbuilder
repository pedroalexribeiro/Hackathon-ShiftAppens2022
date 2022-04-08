json.extract! donor, :id, :name, :type, :email, :bio, :created_at, :updated_at
json.url donor_url(donor, format: :json)
