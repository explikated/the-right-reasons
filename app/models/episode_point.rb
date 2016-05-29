# == Schema Information
#
# Table name: episode_points
#
#  id             :integer          not null, primary key
#  contestant_id  :integer
#  episode_number :integer
#  rule_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class EpisodePoint < ActiveRecord::Base
end
