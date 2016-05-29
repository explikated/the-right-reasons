class AddEliminatedEpisodeToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :eliminated_episode, :integer
  end
end