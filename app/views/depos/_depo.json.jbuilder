json.extract! depo, :id, :deponent, :title, :depo_date, :employed_by, :job_title, :doh, :dod, :reports_to, :file, :created_at, :updated_at
json.url depo_url(depo, format: :json)
json.file url_for(depo.file)
