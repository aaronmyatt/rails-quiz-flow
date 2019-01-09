require 'test_helper'

class CategoryAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get category_admin_dashboard_url
    assert_response :success
  end

end
