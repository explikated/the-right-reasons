class AddPointsToEpiosdePoints < ActiveRecord::Migration
  def change
    add_column :episode_points, :points, :integer
  end
end
