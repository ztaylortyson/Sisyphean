class PagesController < ApplicationController
  def home
  end

  def clients
    @clients = Member.where(client: true)
  end


  def view_contract
      c = Contract.find(params[:contract])
      Dir.chdir(Rails.root.join("FOLDER", "COM_AGREEMENTS"))
      send_file("#{c.source}", type: 'application/pdf', disposition: 'inline')
  end


  def blah
    @contracts = Contract.where(kind: params[:kind])
    @members_fm = Member.where(job_title: "Finance Manager")
  end


end
