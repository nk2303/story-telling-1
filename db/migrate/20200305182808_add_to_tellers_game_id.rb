class AddToTellersGameId < ActiveRecord::Migration[5.1]
  def change
    add_column :tellers, :game_id, :integer
  end
end
