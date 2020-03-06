class AddIdListToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :id_list, :string
  end
end
