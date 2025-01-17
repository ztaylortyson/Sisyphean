class PagesController < ApplicationController
  def home
  end

  def member_notes
      @members = Member.where(commission:true)
  end

  def current_employees
    @members = Member.where(dod:nil, unidentified:!true, commission: true)
    # Sales Representative
    # Finance Manager
    # Service Advisor
  end
  def all_commissioned_employees
    @members = Member.where(commission: true)
    @members_count = @members.count
    #@cepp = Member.where(commission:true, valid_contract: 1111).or(Member.where(commission:true, valid_contract: 1101)
  end

  def cenfe
      @cenfe = Member.where(commission: true, valid_contract: [110,1101])
      @cenfe_count = @cenfe.count
  end

  def cenk
      @cenk = Member.where(commission:true, valid_contract: 0)
      @cenk_count = @cenk.count
  end

  def cepp
       @cepp = Member.where(commission:true, valid_contract: [1111, 1101])
       @cepp_count = @cepp.count
  end

  def unidentified
    @members = Member.where(unidentified: true)
    @members_count = @members.count
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

  def review
    @members = Member.all #.where(reviewed: true)
  end

  def valid_contracts
  end


end
