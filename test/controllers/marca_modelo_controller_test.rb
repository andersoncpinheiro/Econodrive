require "test_helper"

class MarcaModeloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marca_modelo_index_url
    assert_response :success
  end
end
