# frozen_string_literal: true

class CreateDonors < ActiveRecord::Migration[7.0]
  def change
    create_table :donors do |t|
      t.string :name
      t.integer :type
      t.text :bio

      t.timestamps
    end
    add_index :donors, :type
  end
end
