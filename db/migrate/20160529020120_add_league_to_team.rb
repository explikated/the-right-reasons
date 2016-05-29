class AddLeagueToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :league_id, :integer
  end
end
