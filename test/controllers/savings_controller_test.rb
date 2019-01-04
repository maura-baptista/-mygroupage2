require 'test_helper'

class SavingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get savings_new_url
    assert_response :success
  end

end
