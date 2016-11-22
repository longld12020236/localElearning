require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get admin_user_url
    assert_response :success
  end

  test "should get word" do
    get admin_word_url
    assert_response :success
  end

  test "should get category" do
    get admin_category_url
    assert_response :success
  end

end
