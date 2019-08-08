require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get show" do
    get welcome_show_url
    assert_response :success
  end

  test "should get new" do
    get welcome_new_url
    assert_response :success
  end

  test "should get create" do
    get welcome_create_url
    assert_response :success
  end

  test "should get edit" do
    get welcome_edit_url
    assert_response :success
  end

  test "should get update" do
    get welcome_update_url
    assert_response :success
  end

  test "should get destroy" do
    get welcome_destroy_url
    assert_response :success
  end

end
