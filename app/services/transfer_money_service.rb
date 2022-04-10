# frozen_string_literal: true

class TransferMoneyService < ApplicationService
  def initialize(opts = {})
    super(opts)
    @source = opts[:source]
    @target = opts[:target]
    @amount = opts[:amount].to_i
  end

  attr_reader :source, :target, :amount

  def call
    ActiveRecord::Base.transaction do
      validate_params
      transfer_money
    end
    self
  rescue StandardError => e
    @errors << e.message
    self
  end

  private

  def validate_params
    return if source && target && amount && amount.positive?

    error_message = 'Could not transfer any money! Changes were rolledback.'
    @errors << error_message
  end

  def transfer_money
    source.wallet.withdrawal(amount)
    target.wallet.deposit(amount)
  end
end
