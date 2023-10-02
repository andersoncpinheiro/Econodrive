require "test_helper"

class FuelRegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fuel_register_index_url
    assert_response :success
  end
end
