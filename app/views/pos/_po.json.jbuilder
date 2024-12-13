json.extract! po, :id, :date, :title, :documents, :file, :created_at, :updated_at
json.url po_url(po, format: :json)
json.file url_for(po.file)
