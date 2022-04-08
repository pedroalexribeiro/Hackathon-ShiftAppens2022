class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.references :source, polymorphic: true, null: false

      t.timestamps
    end
  end
end
