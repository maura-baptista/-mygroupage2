require 'test_helper'

class MoversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movers_index_url
    assert_response :success
  end

  test "should get new" do
    get movers_new_url
    assert_response :success
  end

end
