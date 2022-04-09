class AddTypeToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :genre, :integer
  end
end
