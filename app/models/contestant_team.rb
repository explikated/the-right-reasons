# == Schema Information
#
# Table name: contestant_teams
#
#  id            :integer          not null, primary key
#  team_id       :integer
#  contestant_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class ContestantTeam < ActiveRecord::Base
  belongs_to :team
  belongs_to :contestant
end
