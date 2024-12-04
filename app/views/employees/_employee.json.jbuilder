json.extract! employee, :id, :employee_id, :full_name, :job_title, :doh, :dod, :psa_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
