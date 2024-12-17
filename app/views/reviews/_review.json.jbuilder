json.extract! review, :id, :discovery_id, :question, :coa, :issue, :wswk, :note, :created_at, :updated_at
json.url review_url(review, format: :json)
