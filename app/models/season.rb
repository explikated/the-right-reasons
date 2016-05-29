# == Schema Information
#
# Table name: seasons
#
#  id          :integer          not null, primary key
#  number      :integer
#  star_name   :string(255)
#  season_type :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Season < ActiveRecord::Base

  SEASON_TYPE = {
    bachelor: 0,
    bachelorette: 1,
    bachelor_in_paradise: 2
  }
  SEASON_TYPE_LOOKUP = SEASON_TYPE.invert

  def season_type_name 
    SEASON_TYPE_LOOKUP.key(self.season_type)
  end

  def self.current_season
    Season.last
  end

end
