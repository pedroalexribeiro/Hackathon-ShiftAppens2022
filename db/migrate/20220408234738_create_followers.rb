# frozen_string_literal: true

class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :follower, null: false, index: true, foreign_key: { to_table: :donors }
      t.references :followee, null: false, index: true, foreign_key: { to_table: :donors }

      t.timestamps
    end
  end
end
