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

  def formated_points_and_description
    description + " - " + points.to_s
  end

end
