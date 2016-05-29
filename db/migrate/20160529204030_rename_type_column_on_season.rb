class RenameTypeColumnOnSeason < ActiveRecord::Migration
  def change
    rename_column :seasons, :type, :season_type
  end
end
