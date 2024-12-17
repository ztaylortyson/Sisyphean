class PrismController < ApplicationController
  
  def misplaced_contracts
      @members = Member.where(misplace_contract: true)
  end

  def pdates
    puts " = = = "
    puts params[:cdate]
    @contracts = Contract.where(hr_signed: params[:cdate])
  end

  def phire
    m = Member.find(params[:member])
    @members = Member.where(doh: m.doh)
  end
  def pdischarge
  
  end

  def pcontract_type
  end

  def pjob_title
    puts "in pjob_title method"
    m = Member.find(params[:member])
    @members = Member.where(job_title: m.job_title)
    
  end

  def pkind
    c = Contract.find(params[:contract])
    @contracts = Contract.where(kind: c.kind)
  end

  def pyear
  end

  def pdraw
      @contracts = Contract.where(draw: true)
  end
  def psalary
    @contracts = Contract.where(salary: true)
  end


  def mcontracts
      @member = Member.find(params[:member])
      @mcontracts = @member.contracts 
  end

end
