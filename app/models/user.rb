# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  age        :integer          default(26)
#  occupation :string(255)      default("Software Salesman")
#

class User < ActiveRecord::Base

end
