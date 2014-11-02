# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  tune       :string(255)
#  company    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  artist_id  :integer
#

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
