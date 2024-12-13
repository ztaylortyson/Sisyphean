json.extract! document_dump, :id, :date, :title, :pos, :created_at, :updated_at
json.url document_dump_url(document_dump, format: :json)
json.pos url_for(document_dump.pos)
