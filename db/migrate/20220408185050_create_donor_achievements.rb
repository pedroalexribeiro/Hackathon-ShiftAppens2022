class CreateDonorAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :donor_achievements do |t|
      t.references :donor, null: false, foreign_key: true
      t.references :achievement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
