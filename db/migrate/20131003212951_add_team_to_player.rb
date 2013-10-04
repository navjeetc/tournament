class AddTeamToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :integer, :team_id
  end
end
