require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Instagram App"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
  test "should get service_rule" do
    get service_rule_path
    assert_response :success
    assert_select "title", "Service Rule | #{@base_title}"
  end

end
