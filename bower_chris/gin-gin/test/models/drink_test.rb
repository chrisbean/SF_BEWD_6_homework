# == Schema Information
#
# Table name: drinks
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  list                :string(255)
#  profile             :string(255)
#  glass               :string(255)
#  price               :integer
#  created_at          :datetime
#  updated_at          :datetime
#  bar                 :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  bar_id_id           :integer
#  bar_id              :integer
#

require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
