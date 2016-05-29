class ChangeContestantIdToInteger < ActiveRecord::Migration
  def change
    change_column :contestant_teams, :contestant_id, 'integer USING CAST(contestant_id AS integer)'
  end
end
