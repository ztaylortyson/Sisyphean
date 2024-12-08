class ExportsController < ApplicationController
  def home
  end

  def members
  end

  def contracts
  end

  def ecd
    ContractsCSVBuilder.new
    flash[:notice] = "Completed Contracts data extraction."
    redirect_to exports_home_path
  end
  def emd
    MembersCSVBuilder.new
    flash[:notice] = "Completed Members data extraction."
    redirect_to exports_home_path
  end
end


class ContractsCSVBuilder
  def initialize
      file = "#{Rails.root}/FOLDER/CSV/contracts_data.csv"
      contracts = Contract.all

      headers = ["source", "kind", "year", "member_id", "notes", \
    "ee_sign", "ee_signed", "hr_signed", "gsm_signed", "gm_signed", \
 "dir_op_signed", "effective_date", "draw", "salary", "hourly", \
 "duplicate"] 
     

      CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
          contracts.each do |c|
              writer << [c.file.filename, c.kind, c.year, c.member_id, c.notes, \
                c.ee_sign, c.ee_signed, c.hr_signed, c.gsm_signed, \
                c.gm_signed, c.dir_op_signed, c.effective_date, c.draw, \
                c.salary, c.hourly, c.duplicate]
          end
      end
  end
end

class MembersCSVBuilder
  def initialize
      file = "#{Rails.root}/FOLDER/CSV/members_data.csv"
      members = Member.all

      headers = ["lname", "fname", "phone", "email", "address", "city", "state", \
  "zip", "client", "employee_id", "job_title", "doh", "dod", "notes", "psa_id" \
  "employee_list_id"] 
     

      CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
          members.each do |m|
              writer << [m.lname, m.fname, m.phone, m.email, m.address, m.city, m.state, \
                m.zip, m.client, m.employee_id, m.job_title, m.doh, m.dod, m.notes, \
                m.psa_id, m.employee_list_id]
          end
      end
  end
end