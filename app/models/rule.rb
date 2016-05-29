# == Schema Information
#
# Table name: rules
#
#  id          :integer          not null, primary key
#  points      :integer
#  description :text
#  category    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Rule < ActiveRecord::Base
end
