# == Schema Information
#
# Table name: scoring_rules
#
#  id          :integer          not null, primary key
#  points      :integer
#  description :text
#  category    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class ScoringRule < ActiveRecord::Base

  has_many :episode_points

end
