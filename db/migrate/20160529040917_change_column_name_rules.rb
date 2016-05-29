class ChangeColumnNameRules < ActiveRecord::Migration
  def change
    rename_column :episode_points, :rule_id, :scoring_rule_id
  end
end
