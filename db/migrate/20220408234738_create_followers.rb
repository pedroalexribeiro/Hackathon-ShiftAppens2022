# frozen_string_literal: true

class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :donor, null: false, foreign_key: true
      t.references :donor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
