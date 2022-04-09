# frozen_string_literal: true

class AchievementService < ApplicationService
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
    self
  end

  private

  def validate_params
    return if source && target && amount

    error_message = 'Could not transfer any money! Changes were rolledback.'
    @errors << error_message
    raise error_message
  end

  def transfer_money
    source.wallet.withdrawal(amount)
    target.wallet.deposit(amount)
  end
end
