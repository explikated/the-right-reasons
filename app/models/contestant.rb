# == Schema Information
#
# Table name: contestants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  occupation :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Contestant < ActiveRecord::Base

  has_many :contestant_teams, :dependent => :destroy
  has_many :teams, through: :contestant_teams
  
end
