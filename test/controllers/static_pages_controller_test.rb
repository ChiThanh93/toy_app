require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
    def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
  end

  test "should get home1" do
    get static_pages_home1_url
    assert_response :success
    # assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
