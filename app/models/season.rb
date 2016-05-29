# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  number     :integer
#  star_name  :string(255)
#  type       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Season < ActiveRecord::Base
end
