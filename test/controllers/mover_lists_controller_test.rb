require 'test_helper'

class MoverListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mover_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get mover_lists_create_url
    assert_response :success
  end

  test "should get edit" do
    get mover_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get mover_lists_update_url
    assert_response :success
  end

end
