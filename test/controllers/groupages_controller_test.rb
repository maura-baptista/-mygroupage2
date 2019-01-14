require 'test_helper'

class GroupagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get groupages_index_url
    assert_response :success
  end

end
