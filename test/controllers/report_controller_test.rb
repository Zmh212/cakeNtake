require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get custlist" do
    get report_custlist_url
    assert_response :success
  end

  test "should get prodlist" do
    get report_prodlist_url
    assert_response :success
  end

  test "should get salelist" do
    get report_salelist_url
    assert_response :success
  end

  test "should get reportmenu" do
    get report_reportmenu_url
    assert_response :success
  end

end
