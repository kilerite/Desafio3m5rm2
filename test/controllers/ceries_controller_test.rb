require "test_helper"

class CeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ceries_index_url
    assert_response :success
  end

  test "should get new" do
    get ceries_new_url
    assert_response :success
  end

  test "should get create" do
    get ceries_create_url
    assert_response :success
  end
end
