require 'test_helper'

class DrilldownControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drilldown_index_url
    assert_response :success
  end

end
