# frozen_string_literal: true

class Wallet < ApplicationRecord
  after_initialize :init

  validates :source, presence: true
  validates :money, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :entity, polymorphic: true

  def init
    self.money ||= 0.0
  end

  def withdrawal(amount)
    self.money -= amount
    save
  end

  def deposit(amount)
    self.money += amount
    save
  end
end
