require "test_helper"

class ParentsControllerTest < ActionDispatch::IntegrationTest
  test "should get phone_number" do
    get parents_phone_number_url
    assert_response :success
  end

  test "should get address" do
    get parents_address_url
    assert_response :success
  end
end
