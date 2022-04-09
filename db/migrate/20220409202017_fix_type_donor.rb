class FixTypeDonor < ActiveRecord::Migration[7.0]
  def change
    rename_column :donors, :type, :d_type
  end
end
