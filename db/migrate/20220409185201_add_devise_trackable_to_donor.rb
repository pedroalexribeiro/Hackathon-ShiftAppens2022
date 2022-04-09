class AddDeviseTrackableToDonor < ActiveRecord::Migration[7.0]
  def change
    add_column :donors, :sign_in_count, :integer, default: 0, null: false
    add_column :donors, :current_sign_in_at, :datetime
    add_column :donors, :last_sign_in_at, :datetime
    add_column :donors, :current_sign_in_ip, :string
    add_column :donors, :last_sign_in_ip, :string
  end
end
