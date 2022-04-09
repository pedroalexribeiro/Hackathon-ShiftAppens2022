# frozen_string_literal: true

module MoneyUser
  extend ActiveSupport::Concern

  included do
    # Every user needs a Wallet
    has_one :wallet, as: :entity

    # Callbacks
    after_create :set_default_wallet

    def set_default_wallet
      self.wallet = build_wallet
    end
  end
end
