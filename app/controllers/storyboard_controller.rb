class StoryboardController < ApplicationController
  def number_misplaced
    #@members = Member.where(misplace_contract: true)
    @rfp4 = Discovery.find(14)
    puts " = = = = = = = = "
    puts @rfp4.inspect
  end

  def dates_of_employment
    @members = Member.where(misplace_contract: true)
  end

  def weeks_without_contract
  end

  def formula
  end

  def damages
  end
end
