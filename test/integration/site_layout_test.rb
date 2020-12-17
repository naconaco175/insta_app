require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layouts links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", singup_path
    get contact_path
    assert_select "title", full_title("Contact")
    get singup_path
    assert_select "title", full_title("Sign up")
  end
end
