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
#  points          :integer
#

class EpisodePoint < ActiveRecord::Base

  belongs_to :contestant
  belongs_to :scoring_rule, :class_name => "ScoringRule"
  before_save :store_points

  def store_points
    if points.nil? && scoring_rule.present?
      self.points = scoring_rule.points
    end
  end

  scope :contestants, ->(ids)  { where(contestant_id: ids) }
  scope :episode, ->(episode_number)  { where(episode_number: episode_number)}
end
