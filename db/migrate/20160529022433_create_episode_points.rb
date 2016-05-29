class CreateEpisodePoints < ActiveRecord::Migration
  def change
    create_table :episode_points do |t|
      t.integer :contestant_id
      t.integer :episode_number
      t.integer :rule_id
      t.timestamps
    end
  end
end
