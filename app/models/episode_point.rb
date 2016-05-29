# == Schema Information
#
# Table name: episode_points
#
#  id              :integer          not null, primary key
#  contestant_id   :integer
#  episode_number  :integer
#  scoring_rule_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class EpisodePoint < ActiveRecord::Base

  belongs_to :contestant
  belongs_to :scoring_rule, :class_name => "ScoringRule"

  scope :contestants, ->(ids)  { where(contestant_id: ids) }

end