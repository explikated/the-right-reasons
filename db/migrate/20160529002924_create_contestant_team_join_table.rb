class CreateContestantTeamJoinTable < ActiveRecord::Migration
  def change
    create_table :contestant_teams do |t|
      t.integer :team_id
      t.string :contestant_id

      t.timestamps
    end
  end
end
