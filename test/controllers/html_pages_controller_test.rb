require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get html_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get html_pages_help_url
    assert_response :success
  end

end
