class RenameRulesTable < ActiveRecord::Migration
  def self.up
    rename_table :rules, :scoring_rules
  end

  def self.down
    rename_table :scoring_rules, :rules
  end
end
