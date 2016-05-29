# == Schema Information
#
# Table name: league_users
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  league_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class LeagueUser < ActiveRecord::Base
end
