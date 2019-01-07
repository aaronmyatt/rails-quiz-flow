require 'test_helper'

class QuestionAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questions_admin_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get questions_admin_dashboard_url
    assert_response :success
  end

  test "should get new" do
    get questions_admin_new_url
    assert_response :success
  end

end
