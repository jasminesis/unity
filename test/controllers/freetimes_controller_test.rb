require 'test_helper'

class FreetimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get freetimes_index_url
    assert_response :success
  end

  test "should get new" do
    get freetimes_new_url
    assert_response :success
  end

  test "should get show" do
    get freetimes_show_url
    assert_response :success
  end

  test "should get edit" do
    get freetimes_edit_url
    assert_response :success
  end

end
