require "test_helper"

class AuthersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get authers_new_url
    assert_response :success
  end

  test "should get create" do
    get authers_create_url
    assert_response :success
  end

  test "should get update" do
    get authers_update_url
    assert_response :success
  end

  test "should get edit" do
    get authers_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get authers_destroy_url
    assert_response :success
  end

  test "should get index" do
    get authers_index_url
    assert_response :success
  end

  test "should get show" do
    get authers_show_url
    assert_response :success
  end
end
