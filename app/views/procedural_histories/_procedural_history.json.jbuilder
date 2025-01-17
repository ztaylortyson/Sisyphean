json.extract! procedural_history, :id, :date, :event, :description, :roa, :file, :created_at, :updated_at
json.url procedural_history_url(procedural_history, format: :json)
json.file url_for(procedural_history.file)
