json.extract! verification, :id, :date, :title, :signed_by, :file, :created_at, :updated_at
json.url verification_url(verification, format: :json)
json.file url_for(verification.file)
