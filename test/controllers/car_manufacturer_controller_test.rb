require "test_helper"

class CarManufacturerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_manufacturer_index_url
    assert_response :success
  end
end
