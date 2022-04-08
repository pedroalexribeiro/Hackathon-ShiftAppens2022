class CreateDonors < ActiveRecord::Migration[7.0]
  def change
    create_table :donors do |t|
      t.string :name
      t.integer :type
      t.string :email
      t.string :password_digest
      t.text :bio

      t.timestamps
    end
    add_index :donors, :type
    add_index :donors, :email, unique: true
  end
end
