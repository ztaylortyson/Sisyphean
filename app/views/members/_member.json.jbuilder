json.extract! member, :id, :lname, :fname, :phone, :email, :address, :city, :state, :zip, :client, :employee_id, :job_title, :doh, :dod, :notes, :psa_id, :created_at, :updated_at
json.url member_url(member, format: :json)
