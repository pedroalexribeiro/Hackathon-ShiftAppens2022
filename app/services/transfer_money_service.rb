# frozen_string_literal: true

class TransferMoneyService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @source = opts[:source]
    @target = opts[:target]
    @amount = opts[:amount]
  end

  attr_reader :source, :target, :amount

  def call
    ActiveRecord::Base.transaction do
      validate_params
      transfer_money
    end
  end

  def validate_params
    raise 'Could not '
  end

  def transfer_money
    source.wallet.withdrawal(amount)
    target.wallet.deposit(amount)
  end
end
