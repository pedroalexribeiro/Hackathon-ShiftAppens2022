# frozen_string_literal: true

class Wallet < ApplicationRecord
  belongs_to :entity, polymorphic: true

  validates :entity, presence: true
  validates :money, numericality: { greater_than_or_equal_to: 0 }

  after_initialize :set_default_value

  def set_default_value
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
