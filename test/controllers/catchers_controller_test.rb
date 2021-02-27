require 'test_helper'

class CatchersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catchers_index_url
    assert_response :success
  end

end
