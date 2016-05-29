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

require 'test_helper'

class ContestantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
