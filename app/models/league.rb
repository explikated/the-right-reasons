# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  season_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class League < ActiveRecord::Base
end
