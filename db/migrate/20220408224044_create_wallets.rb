# frozen_string_literal: true

class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.integer :money
      t.references :entity, polymorphic: true, null: false

      t.timestamps
    end
  end
end
