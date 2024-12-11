json.extract! pleading, :id, :roa, :date_filed, :title, :filed_by, :file, :created_at, :updated_at
json.url pleading_url(pleading, format: :json)
json.file url_for(pleading.file)
