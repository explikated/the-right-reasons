# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#  age        :integer          default(26)
#  occupation :string(255)      default("Software Salesman")
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
