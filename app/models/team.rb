# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  league_id  :integer
#

class Team < ActiveRecord::Base
  belongs_to :user
  belongs_to :league

  has_many :contestant_teams, :dependent => :destroy
  has_many :contestants, through: :contestant_teams

  def add_contestant contestant
    ContestantTeam.create(team_id: self.id, contestant_id: contestant.id)
  end
end
