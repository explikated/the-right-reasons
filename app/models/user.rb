# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  age        :integer          default(26)
#  occupation :string(255)      default("Software Salesman")
#  email      :string(255)      default(""), not null
#

class User < ActiveRecord::Base

  has_many :league_users, :dependent => :destroy
  has_many :leagues, through: :league_users

  has_many :teams

  def join_league league
    LeagueUser.create(user_id: self.id, league_id: league.id)
  end

  def create_team league
    self.teams.create(league_id: league.id)
  end
end
