class AddOptionsToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :options, :jsonb, default: {}
    add_column :activities, :category, :integer
  end
end
