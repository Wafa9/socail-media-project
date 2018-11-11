require 'test_helper'

class POstControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get p_ost_new_url
    assert_response :success
  end

  test "should get edit" do
    get p_ost_edit_url
    assert_response :success
  end

  test "should get show" do
    get p_ost_show_url
    assert_response :success
  end

end
