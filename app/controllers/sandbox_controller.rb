class SandboxController < ApplicationController
  def foo
    @fooo = Member.joins(:contracts).where(contracts: {commissions: 'true'})
  end

  def bar
    fo = Contract.where(commissions: 'true')
    @fo = fo.select(:kind).distinct.sort
  end

  def yo
  end
end
