require 'test_helper'

class DrilldownAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drilldown_admin_index_url
    assert_response :success
  end

end
